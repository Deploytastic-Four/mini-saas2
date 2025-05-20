#!/bin/sh

mkdir -p /opt/backups
export PGPASSWORD=$POSTGRES_PASSWORD
pg_dump -U $POSTGRES_USER -h 127.0.0.1 postgres > /opt/backups/db-$(date +%F).sql
