#!/bin/bash
echo "Iniciando todos os serviços do servidor..."

# Descobre o caminho exato onde o script está rodando
DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

# Inicia o Plex
echo "-> Subindo Plex..."
cd "$DIR/services/plex" && docker compose up -d

# Inicia o Vaultwarden
echo "-> Subindo Vaultwarden..."
cd "$DIR/services/vaultwarden" && docker compose up -d

echo "-> Subindo Minecraft..."
cd "$DIR/services/minecraft" && docker compose up -d

echo "-> Subindo API de Servidor... "
cd "$DIR/services/api_server" && docker compose up -d --build

echo "Processo de deploy finalizado!"
