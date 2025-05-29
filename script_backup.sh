#!/bin/bash

DIRETORIO_ORIGEM="/home/emilio/devops"

DIRETORIO_BACKUP="/home/emilio/backup"

DATA=$(date +"%Y-%m-%d_%H-%M-%S")
ARQUIVO_BACKUP="backup_${DATA}.tar.gz"

tar -czf "${DIRETORIO_BACKUP}/${ARQUIVO_BACKUP}" -C "$(dirname "$DIRETORIO_ORIGEM")" "$(basename "$DIRETORIO_ORIGEM")"

echo "Backup criado com sucesso: ${DIRETORIO_BACKUP}/${ARQUIVO_BACKUP}"
