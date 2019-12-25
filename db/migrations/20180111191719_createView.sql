-- +goose Up
-- SQL in this section is executed when the migration is applied.
CREATE MATERIALIZED VIEW v_Pokemon as
select p.*, s.speed, s.sp_attack, s.sp_defence, s.attack, s.defence, s.hp from pokemon p left join stats s on p.id = s.id order by p.id;

-- +goose Down
-- SQL in this section is executed when the migration is rolled back.

drop materialized view v_Pokemon;
