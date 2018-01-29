-- +goose Up
-- SQL in this section is executed when the migration is applied.
insert into Stats
  (id, speed, Sp_Attack, Sp_Defence, Attack, Defence, HP)
  values
  (1, 45, 65, 65, 49, 49, 45),
  (2, 60, 80, 80, 63, 62, 60),
  (3, 80, 100, 100, 83, 82, 80);

insert into pokemon
  (id, name, base_experience, height, is_default, weight, ability, stats, types)
  values
  (1, 'Bulbasaur', 64, 7, TRUE, 69, '["Chlorophyll","Hidden Ability"]', 1, '["grass", "poison"]'),
  (2, 'ivysaur', 142, 10, TRUE, 130, '["Chlorophyll","Hidden Ability"]', 2, '["grass", "poison"]'),
  (3, 'venusaur', 236, 20, TRUE, 1000, '["Chlorophyll","Overgrow"]', 3, '["grass", "poison"]');

-- +goose Down
-- SQL in this section is executed when the migration is rolled back.
