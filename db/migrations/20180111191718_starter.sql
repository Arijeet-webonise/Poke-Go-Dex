-- +goose Up
-- SQL in this section is executed when the migration is applied.
insert into pokemon
  (id, name, base_experience, height, is_default, weight, ability, forms, game_indices, held_items, location_area_encounters, stats, types)
  values
  (1, 'Bulbasaur', 64, 7, 0, 69, );
-- +goose Down
-- SQL in this section is executed when the migration is rolled back.
