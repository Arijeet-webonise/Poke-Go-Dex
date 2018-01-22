package app

import (
	"github.com/Arijeet-webonise/Poke-Go-Dex/pkg/framework"
)

//Ping will indicate the health
func (a App) ping(w *framework.Response, r *framework.Request) {
	//go:generate echo hello form ping
	a.Log.Info("hello from the log side")
	w.Message("pong")
}
