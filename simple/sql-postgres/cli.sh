#!/bin/bash

USER=$1

if [ -z "${USER}" ]; then
    echo "VAR is unset or set to the empty string"
    USER=postgres
fi

docker exec -it sqlpostgres_postgres_1 psql -U $USER
