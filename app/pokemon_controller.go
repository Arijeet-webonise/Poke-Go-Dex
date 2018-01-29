package app

import (
	"encoding/json"
	"errors"
	"io"
	"io/ioutil"
	"net/http"
	"reflect"

	"github.com/Arijeet-webonise/Poke-Go-Dex/app/models"
	"github.com/Arijeet-webonise/Poke-Go-Dex/pkg/framework"
)

type Pokemon struct {
	Poke    models.Pokemon
	Ability []string
	Stats   []string
	Types   []string
}

func (a App) GetAllPokemon(w *framework.Response, r *framework.Request) {

	pokemons, err := models.GetAllPokemons(a.DB)
	if err != nil {
		a.Log.Info(err.Error())
		w.NotFound(errors.New("could not find the role"))
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
	Url  string `json: url`
	name string `json: name`
}

type PokemonList struct {
	Count    int      `json: count`
	Previous string   `json: previous`
	Next     string   `json: next`
	Results  []Result `json: results`
}

func CreatePokemon(pokemonUrl string, app *App) {
	resp, err := http.Get(pokemonUrl)
	jsonResp := make(map[string]interface{}, 0)
	if err != nil {
		app.Log.Info(err)
	}

	bytes, _ := ioutil.ReadAll(resp.Body)

	json.Unmarshal(bytes, &jsonResp)

	app.Log.Info(reflect.TypeOf(jsonResp["game_indices"]))

	for _, indexes := range jsonResp["game_indices"] {

	}
}

func (app *App) GenerateNewPokemon(w http.ResponseWriter, r *http.Request) {
	tmplList := []string{"../../web/views/base.html",
		"../../web/views/pokemon/generate.html"}

	resp, err := http.Get("https://pokeapi.co/api/v2/pokemon")
	if err != nil {
		app.Log.Info(err)
	}
	var pokemons PokemonList

	bytes, _ := ioutil.ReadAll(resp.Body)
	json.Unmarshal(bytes, &pokemons)

	for _, pokemon := range pokemons.Results {
		CreatePokemon(pokemon.Url, app)
		break
	}

	res, err := app.TplParser.ParseTemplate(tmplList, nil)
	if err != nil {
		app.Log.Info(err)
	}
	io.WriteString(w, res)
}

//RenderIndex renders the index page
func (app *App) DisplayPokemons(w http.ResponseWriter, r *http.Request) {
	pokemons, _ := models.GetPokemons(app.DB)
	tmplList := []string{"../../web/views/base.html",
		"../../web/views/pokemon/pokemons.html"}

	data := struct {
		Pokemon []*models.PokemonPage
	}{pokemons}

	res, err := app.TplParser.ParseTemplate(tmplList, data)

	if err != nil {
		app.Log.Info(err)
	}
	io.WriteString(w, res)
}
