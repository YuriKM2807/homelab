Boa noite :)
Meu Homelab - Servidor Caseiro

Repositório central de configurações e automações para o meu servidor doméstico (Laptop-Servidor). 
Esta infraestrutura utiliza **Docker** e **Docker Compose** para isolar e gerenciar múltiplos serviços de 
forma leve e segura.

---

## Serviços Inclusos

| Serviço | Descrição | Porta | Dados/configuração |
| --- | --- | --- | --- |
| **Plex** | Servidor de mídia para filmes e séries | `32400` (modo de rede do host) | `~/Midia`, `./services/plex/config` e `./services/plex/transcode` |
| **Vaultwarden** | Gerenciador de senhas leve, compatível com Bitwarden | `8080` | `./services/vaultwarden/vw-data` |
| **Minecraft** | Servidor Minecraft Java com Paper | `25565` | `./services/minecraft/data` |
| **Site Minecraft** | Página de convite do servidor, servida por Nginx | `80` | Arquivos estáticos em `./services/site` |
| **API de Monitoramento** | API FastAPI com uso de CPU, memória, disco e temperatura do servidor | `8000` | Código em `./services/api_server` |

---

## Estrutura do Repositório

```text
homelab/
├── deploy.sh                         # Inicia todos os serviços
├── stop.sh                           # Para todos os serviços
├── .gitignore                        # Arquivos e diretórios ignorados pelo Git
├── README.md                         # Documentação do projeto
└── services/
    ├── api_server/
    │   ├── Dockerfile                # Imagem da API FastAPI
    │   ├── docker-compose.yml         # Configuração do container da API
    │   ├── main.py                   # Endpoint de monitoramento
    │   └── requirements.txt          # Dependências Python
    ├── minecraft/
    │   ├── docker-compose.yml         # Configuração do servidor Minecraft
    │   └── data/                     # Mundo e dados persistentes (ignorado pelo Git)
    ├── plex/
    │   └── docker-compose.yml         # Configuração do Plex
    ├── site/
    │   ├── docker-compose.yml         # Configuração do Nginx
    │   ├── index.html                # Página do servidor Minecraft
    │   ├── style.css                 # Estilos da página
    │   └── js/site.js                # Interações da página
    └── vaultwarden/
        └── docker-compose.yml         # Configuração do Vaultwarden
```
