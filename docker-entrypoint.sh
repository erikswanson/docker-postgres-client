#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

export PGHOST=${POSTGRES_PORT_5432_TCP_ADDR?'Missing: --link <my-postgres>:postgres'}
export PGPORT=${POSTGRES_PORT_5432_TCP_PORT?'Missing: --link <my-postgres>:postgres'}
export PGUSER=${POSTGRES_ENV_POSTGRES_USER:-postgres}
export PGDATABASE=${POSTGRES_ENV_POSTGRES_DB:-${PGUSER}}

if test -n "$POSTGRES_ENV_POSTGRES_PASSWORD"; then
cat > ~/.pgpass <<EOF
${PGHOST}:${PGPORT}:${PGDATABASE}:${PGUSER}:${POSTGRES_ENV_POSTGRES_PASSWORD}
EOF
chmod 0600 ~/.pgpass
fi

exec "$@"
