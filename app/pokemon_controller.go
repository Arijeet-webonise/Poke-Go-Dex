package app

import (
	"io"
	"net/http"
)

//RenderIndex renders the index page
func (app *App) RenderPokemon(w http.ResponseWriter, r *http.Request) {
	tmplList := []string{"./web/views/base.html",
		"./web/views/pokemon.html"}
	res, err := app.TplParser.ParseTemplate(tmplList, nil)
	if err != nil {
		app.Log.Info(err)
	}
	io.WriteString(w, res)
}
