package app

import (
	"errors"
	"io"
	"net/http"

	"github.com/Arijeet-webonise/Poke-Go-Dex/app/models"
	"github.com/Arijeet-webonise/Poke-Go-Dex/pkg/framework"
)

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

func (app *App) GenerateNewPokemon(w http.ResponseWriter, r *http.Request) {
	tmplList := []string{"./web/views/base.html",
		"./web/views/pokemon/generate.html"}

	res, err := app.TplParser.ParseTemplate(tmplList, nil)
	if err != nil {
		app.Log.Info(err)
	}
	io.WriteString(w, res)
}

//RenderIndex renders the index page
func (app *App) DisplayPokemons(w http.ResponseWriter, r *http.Request) {
	pokemons, err := models.GetAllPokemons(app.DB)
	tmplList := []string{"./web/views/base.html",
		"./web/views/todos/todo.html"}
	data := struct {
		Pokemon []*models.Pokemon
	}{pokemons}
	res, err := app.TplParser.ParseTemplate(tmplList, data)
	if err != nil {
		app.Log.Info(err)
	}
	io.WriteString(w, res)
}
