// Package models contains the types for schema 'public'.
package models

import (
	"database/sql"
	"encoding/json"
)

type PokemonMatView struct {
	ID             int             `json:"id"`              // id
	Name           sql.NullString  `json:"name"`            // name
	BaseExperience sql.NullFloat64 `json:"base_experience"` // base_experience
	Height         sql.NullFloat64 `json:"height"`          // height
	IsDefault      sql.NullBool    `json:"is_default"`      // is_default
	Weight         sql.NullFloat64 `json:"weight"`          // weight
	Ability        sql.NullString  `json:"ability"`         // ability
	Stats          int             `json:"stats"`           // stats
	Types          sql.NullString  `json:"types"`           // types
	Speed          sql.NullInt64   `json:"speed"`           // speed
	SpAttack       sql.NullInt64   `json:"sp_attack"`       // sp_attack
	SpDefence      sql.NullInt64   `json:"sp_defence"`      // sp_defence
	Attack         sql.NullInt64   `json:"attack"`          // attack
	Defence        sql.NullInt64   `json:"defence"`         // defence
	Hp             sql.NullInt64   `json:"hp"`              // hp

	// xo fields
	_exists, _deleted bool
}

func (p PokemonMatView) GetAbilities() []string {
	var abilities []string

	json.Unmarshal([]byte(p.Ability.String), &abilities)

	return abilities
}

func (p PokemonMatView) GetTypes() []string {
	var Pokemontype []string

	json.Unmarshal([]byte(p.Types.String), &Pokemontype)

	return Pokemontype
}

type PokemonPage struct {
	PokemonData *Pokemon
	StatsData   *Stat
	Types       []string
}

func GetPokemonsList(db XODB, limit int, offset int) ([]*PokemonMatView, error) {
	const sqlstr = `SELECT ` +
		`*` +
		`FROM v_pokemon`

	q, err := db.Query(sqlstr)
	if err != nil {
		return nil, err
	}
	defer q.Close()

	// load results
	var res []*PokemonMatView
	for q.Next() {
		p := PokemonMatView{}

		// scan
		err = q.Scan(&p.ID, &p.Name, &p.BaseExperience, &p.Height, &p.IsDefault, &p.Weight,
			&p.Ability, &p.Stats, &p.Types, &p.Speed, &p.SpAttack, &p.SpDefence, &p.Attack, &p.Defence, &p.Hp)
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

func FindPokemon(db XODB, id int) (*PokemonMatView, error) {
	var err error

	// sql query
	const sqlstr = `SELECT ` +
		`*` +
		`FROM v_pokemon ` +
		`WHERE id = $1`

	// run query
	XOLog(sqlstr, id)
	p := PokemonMatView{
		_exists: true,
	}

	err = db.QueryRow(sqlstr, id).Scan(&p.ID, &p.Name, &p.BaseExperience, &p.Height, &p.IsDefault, &p.Weight,
		&p.Ability, &p.Stats, &p.Types, &p.Speed, &p.SpAttack, &p.SpDefence, &p.Attack, &p.Defence, &p.Hp)
	if err != nil {
		return nil, err
	}

	return &p, nil

}
