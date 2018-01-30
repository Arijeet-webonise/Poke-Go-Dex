package app

import (
	"database/sql"
	"encoding/json"
	"errors"
	"io"
	"io/ioutil"
	"net/http"
	"strconv"
	"sync"

	"github.com/Arijeet-webonise/Poke-Go-Dex/app/models"
	"github.com/Arijeet-webonise/Poke-Go-Dex/pkg/framework"
	"github.com/go-zoo/bone"
)

var wg sync.WaitGroup

type Pokemon struct {
	Poke    models.Pokemon
	Ability []string
	Stats   []string
	Types   []string
}

func (app App) SagarPage(w http.ResponseWriter, r *http.Request) {
	tmplList := []string{"../../web/views/base.html",
		"../../web/views/pokemon/sagar.html"}

	data := struct {
		Name string
	}{bone.GetValue(r, "name")}

	res, err := app.TplParser.ParseTemplate(tmplList, data)
	if err != nil {
		app.Log.Info(err)
	}

	io.WriteString(w, res)

}

func (app App) GetPokemon(w http.ResponseWriter, r *http.Request) {
	tmplList := []string{"../../web/views/base.html",
		"../../web/views/pokemon/pokemon.html"}

	id, err := strconv.Atoi(bone.GetValue(r, "id"))

	if err != nil {
		app.Log.Error(err)
	}

	pokemon, err := models.FindPokemon(app.DB, id)

	if err != nil {
		app.Log.Error(err)
	}

	data := struct {
		Pokemon      *models.PokemonMatView
		Abilities    []string
		PokemonTypes []string
	}{pokemon, pokemon.GetAbilities(), pokemon.GetTypes()}

	res, err := app.TplParser.ParseTemplate(tmplList, data)
	if err != nil {
		app.Log.Error(err)
	}

	io.WriteString(w, res)
}

func (a App) GetAllPokemon(w *framework.Response, r *framework.Request) {

	pokemons, err := models.GetAllPokemons(a.DB)
	if err != nil {
		a.Log.Info(err.Error())
		w.NotFound(errors.New("could not find the Pokemon"))
		return
	}
	a.Log.Info(pokemons)
	if err != nil {
		panic(err)
		return
	}
	w.PutInData("Pokemons", pokemons)
}

type Result struct {
	Url  string `json:url`
	Name string `json:name`
}

type PokemonList struct {
	Count    int      `json:count`
	Previous string   `json:previous`
	Next     string   `json:next`
	Results  []Result `json:results`
}

type PokemonTypeSingleAPI struct {
	Url  string `json:"url"`
	Name string `json:"name"`
}

type PokemonTypeAPI struct {
	Slot        int                  `json:"slot"`
	PokemonType PokemonTypeSingleAPI `json:"type"`
}

type StatsAPI struct {
	Stat      Result `json:stat`
	Effort    int64  `json:effort`
	Base_stat int64  `json:base_stat`
}

type AbilityAPI struct {
	Slot    int64  `json:slot`
	Hidden  bool   `json:is_hidden`
	Ability Result `json:ability`
}

type FormAPI struct {
	Url  string `json:url`
	Name string `json:name`
}

type PokemonAPI struct {
	Form            []FormAPI        `json:"forms"`
	Id              int              `json:id`
	Abilities       []AbilityAPI     `json:abilities`
	Stats           []StatsAPI       `json:stats`
	Base_experience float64          `json:base_experience`
	Types           []PokemonTypeAPI `json:"types"`
	Height          float64          `json:height`
	IsDefault       bool             `json:is_default`
	Weight          float64          `json:weight`
}

func (poke PokemonAPI) GetTypes() string {
	var returnJson string
	for index, pokeType := range poke.Types {
		if index != 0 {
			returnJson += ","
		}
		returnJson += `"` + pokeType.PokemonType.Name + `"`
	}
	return "[" + returnJson + "]"
}

func (poke PokemonAPI) GetName() string {
	for _, form := range poke.Form {
		return form.Name
	}
	return ""
}

func (poke PokemonAPI) GetAbilities() string {
	var returnJson string
	for index, ability := range poke.Abilities {
		if index != 0 {
			returnJson += ","
		}
		returnJson += `"` + ability.Ability.Name + `"`
	}
	return "[" + returnJson + "]"
}

func (poke PokemonAPI) GetStats() map[string]int64 {
	returnMap := make(map[string]int64)

	for _, stat := range poke.Stats {
		returnMap[stat.Stat.Name] = stat.Base_stat
	}

	return returnMap
}

func CreatePokemon(pokemonUrl string, app *App) {
	defer wg.Done()

	resp, err := http.Get(pokemonUrl)
	var jsonResp PokemonAPI
	if err != nil {
		app.Log.Info(err)
	}

	bytes, _ := ioutil.ReadAll(resp.Body)

	json.Unmarshal(bytes, &jsonResp)

	var pokemon models.Pokemon

	var stats models.Stat
	statsMap := jsonResp.GetStats()

	stats.ID = jsonResp.Id
	stats.Hp = sql.NullInt64{Int64: statsMap["hp"], Valid: true}
	stats.SpDefence = sql.NullInt64{Int64: statsMap["special-defense"], Valid: true}
	stats.SpAttack = sql.NullInt64{Int64: statsMap["special-attack"], Valid: true}
	stats.Defence = sql.NullInt64{Int64: statsMap["defense"], Valid: true}
	stats.Attack = sql.NullInt64{Int64: statsMap["attack"], Valid: true}
	stats.Speed = sql.NullInt64{Int64: statsMap["speed"], Valid: true}

	pokemon.ID = jsonResp.Id
	pokemon.Name = sql.NullString{String: jsonResp.GetName(), Valid: true}
	pokemon.BaseExperience = sql.NullFloat64{Float64: jsonResp.Base_experience, Valid: true}
	pokemon.Height = sql.NullFloat64{Float64: jsonResp.Height, Valid: true}
	pokemon.Weight = sql.NullFloat64{Float64: jsonResp.Weight, Valid: true}
	pokemon.IsDefault = sql.NullBool{Bool: jsonResp.IsDefault, Valid: true}
	pokemon.Ability = sql.NullString{String: jsonResp.GetAbilities(), Valid: true}
	pokemon.Types = sql.NullString{String: jsonResp.GetTypes(), Valid: true}
	pokemon.Stats = stats.ID

	if pokemon.ID == 0 {
		panic(pokemon)
	}

	err = stats.Upsert(app.DB)
	if err != nil {
		app.Log.Info(err)
	}

	err = pokemon.Upsert(app.DB)
	if err != nil {
		app.Log.Info(err)
	}

	app.Log.Info(pokemon.Name.String + " is inserted")
}

func (app *App) GenerateNewPokemon(w http.ResponseWriter, r *http.Request) {
	tmplList := []string{"../../web/views/base.html",
		"../../web/views/pokemon/generate.html"}

	for offset := 1; offset < 93; offset++ {
		var offsetstr string

		if offset == 1 {
			offsetstr = "0"
		} else {
			offsetstr = strconv.Itoa(offset * 10)
		}

		resp, err := http.Get("https://pokeapi.co/api/v2/pokemon/?limit=20&offset=" + offsetstr)
		if err != nil {
			app.Log.Info(err)
		}
		var pokemons PokemonList

		bytes, _ := ioutil.ReadAll(resp.Body)
		json.Unmarshal(bytes, &pokemons)
		resp.Body.Close()

		for _, pokemon := range pokemons.Results {
			go CreatePokemon(pokemon.Url, app)
			wg.Add(1)
		}
		wg.Wait()

		app.Log.Info(strconv.Itoa(offset) + " is complete")
	}

	res, err := app.TplParser.ParseTemplate(tmplList, nil)
	if err != nil {
		app.Log.Info(err)
	}
	io.WriteString(w, res)
}

//RenderIndex renders the index page
func (app *App) DisplayPokemons(w http.ResponseWriter, r *http.Request) {
	var offset int
	var limit int

	offset = 0
	limit = 20
	pokemons, _ := models.GetPokemonsList(app.DB, offset, limit)

	tmplList := []string{"../../web/views/base.html",
		"../../web/views/pokemon/pokemons.html"}

	data := struct {
		Pokemon []*models.PokemonMatView
	}{pokemons}

	res, err := app.TplParser.ParseTemplate(tmplList, data)

	if err != nil {
		app.Log.Info(err)
	}
	io.WriteString(w, res)
}
