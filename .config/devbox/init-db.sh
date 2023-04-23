#!/bin/bash

if [ ! -f "$PGDATA/PG_VERSION" ]; then
    initdb -D "$PGDATA" -U postgres
    psql -U postgres -f ./init-db.sql
fi
