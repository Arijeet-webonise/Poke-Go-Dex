package app

import (
	"database/sql"

	"github.com/go-zoo/bone"
	"github.com/Arijeet-webonise/Poke-Go-Dex/pkg/logger"
	"github.com/Arijeet-webonise/Poke-Go-Dex/pkg/templates"
)

// App enscapsulates the App environment
type App struct {
	Router    *bone.Mux
	Cfg       *Config
	Log       logger.ILogger
	TplParser templates.ITemplateParser
	DB        *sql.DB
}
