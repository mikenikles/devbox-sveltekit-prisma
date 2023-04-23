#!/bin/bash

if [ ! -d "$PGDATA" ]; then
    initdb -D "$PGDATA" -U postgres
    psql -U postgres -f ./init-db.sql
fi
