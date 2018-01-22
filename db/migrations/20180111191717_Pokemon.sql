-- +goose Up
-- SQL in this section is executed when the migration is applied.

CREATE TABLE pokemon (
  id INT PRIMARY KEY ,
  name TEXT UNIQUE ,
  base_experience FLOAT,
  height FLOAT,
  is_default BOOLEAN,
  weight FLOAT,
  ability TEXT,
  forms TEXT,
  game_indices TEXT,
  held_items TEXT,
  location_area_encounters TEXT,
  stats TEXT,
  types TEXT
);

-- +goose Down
-- SQL in this section is executed when the migration is rolled back.

TRUNCATE pokemon;
DROP TABLE pokemon;
