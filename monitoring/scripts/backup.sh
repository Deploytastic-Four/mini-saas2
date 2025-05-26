#!/bin/bash

BACKUP_DIR="$HOME/backups"
mkdir -p "$BACKUP_DIR"

echo "Backing up PostgreSQL data..."
docker exec mini-saas2-db-1 pg_dump -U postgres postgres > "$BACKUP_DIR/postgres_backup_$(date +%F).sql"

echo "Backup completed successfully!"