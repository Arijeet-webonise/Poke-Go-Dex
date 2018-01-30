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

func GetPokemonsList(db XODB, limit int, offset int) ([]*Pokemon, error) {
	const sqlstr = `SELECT ` +
		`*` +
		`FROM v_pokemon`

	q, err := db.Query(sqlstr)
	if err != nil {
		return nil, err
	}
	defer q.Close()

	// load results
	var res []*Pokemon
	for q.Next() {
		p := Pokemon{}

		// scan
		err = q.Scan(&p.ID, &p.Name, &p.BaseExperience, &p.Height, &p.IsDefault, &p.Weight, &p.Ability, &p.Stats, &p.Types)
		if err != nil {
			return nil, err
		}

		res = append(res, &p)
	}

	return res, nil
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
