#/bin/bash

goose -dir=./db/migrations postgres "user=local dbname=pokemon sslmode=disable password=toor" up

xo pgsql://local:toor@localhost/pokemon -o app/models --suffix=.go --template-path templates/
