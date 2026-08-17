#!/bin/bash
echo "Iniciando todos os serviços do servidor..."

# Inicia o Plex
echo "-> Subindo Plex..."
cd servicos/plex && docker compose up -d && cd ../..

# Inicia o Vaultwarden
echo "-> Subindo Vaultwarden..."
cd servicos/vaultwarden && docker compose up -d && cd ../..

echo "Todos os serviços foram iniciados com sucesso!"
