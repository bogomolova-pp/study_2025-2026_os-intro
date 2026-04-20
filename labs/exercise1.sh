#!/bin/bash
BACKUP_DIR="$HOME/backup"
SCRIPT_PATH=$(realpath "$0")
SCRIPT_NAME=$(basename "$0")
TIMESTAMP=$(date +%Y%m%d_%H%M%S)
mkdir -p "$BACKUP_DIR"
tar -czf "$BACKUP_DIR/${SCRIPT_NAME}_${TIMESTAMP}.tar.gz" "$SCRIPT_PATH"
