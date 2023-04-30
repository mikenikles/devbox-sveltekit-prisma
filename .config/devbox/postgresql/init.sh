#!/bin/bash

start_db() {
    devbox services up --background
    echo "Waiting for Postgres to start..."
    timeout 20 bash -c 'until printf \"\" 2>>/dev/null >>/dev/tcp/$0/$1; do sleep 3; done' localhost 5432
}

if [ ! -f "$PGDATA/PG_VERSION" ]; then
    initdb -D "$PGDATA" -U postgres
    start_db
    psql -U postgres -f ./.config/devbox/postgresql/init.sql
else
    start_db
fi
