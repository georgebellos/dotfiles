#!/usr/bin/env bash

server_status=`/usr/local/bin/pg_ctl -D /usr/local/var/postgres status`

if [ "$server_status" == "pg_ctl: no server running" ]; then
  postgres -D /usr/local/var/postgres
else
  tail -f /usr/local/var/postgres9.2.4/server.log
fi
