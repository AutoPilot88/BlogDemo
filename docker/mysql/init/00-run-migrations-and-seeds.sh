#!/usr/bin/env bash
set -e

for f in /migrations/up/*.sql; do
    [ -e "$f" ] || continue
    mysql_note "Running migration: ${f}"
    docker_process_sql --database="${MYSQL_DATABASE}" < "$f"
done

for f in /seeds/*.sql; do
    [ -e "$f" ] || continue
    mysql_note "Running seed: ${f}"
    docker_process_sql --database="${MYSQL_DATABASE}" < "$f"
done
