// Package models contains the types for schema 'public'.
package models

import (
	"encoding/json"
)

type PokemonPage struct {
	PokemonData *Pokemon
	StatsData   *Stat
	Types       []string
}

func GetPokemons(db XODB) ([]*PokemonPage, error) {
	var data []*PokemonPage
	pokemons, error := GetAllPokemons(db)
	for _, pokemon := range pokemons {
		var newData PokemonPage
		var jsonarray []string
		newData.PokemonData = pokemon
		newData.StatsData, _ = pokemon.Stat(db)
		json.Unmarshal([]byte(pokemon.Types.String), &jsonarray)
		newData.Types = jsonarray
		data = append(data, &newData)
	}
	return data, error
}
