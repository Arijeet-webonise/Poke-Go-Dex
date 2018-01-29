-- +goose Up
-- SQL in this section is executed when the migration is applied.

CREATE TABLE Stats (
  id INT PRIMARY KEY,
  speed int default 0,
  Sp_Attack int default 0,
  Sp_Defence int default 0,
  Attack int default 0,
  Defence int default 0,
  HP int default 0
);

CREATE TABLE pokemon (
  id INT PRIMARY KEY ,
  name TEXT UNIQUE ,
  base_experience FLOAT,
  height FLOAT,
  is_default BOOLEAN,
  weight FLOAT,
  ability TEXT,
  stats INT NOT NULL,
  types TEXT,
  FOREIGN KEY (stats) REFERENCES Stats(id)
);

-- +goose Down
-- SQL in this section is executed when the migration is rolled back.

TRUNCATE pokemon;
DROP TABLE pokemon;
