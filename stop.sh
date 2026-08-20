#!/bin/bash
echo "Parando todos os serviços do servidor..."

DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" >/dev/null 2>&1 && pwd )"

echo "-> Parando Plex..."
cd "$DIR/services/plex" && docker compose down

echo "-> Parando Vaultwarden..."
cd "$DIR/services/vaultwarden" && docker compose down

echo "-> Parando Minecraft..."
cd "$DIR/services/minecraft" && docker compose down

echo "-> Parando API servidor... "
cd "$DIR/services/api_server" && docker compose down

echo "Todos os serviços foram desligados com sucesso!"
