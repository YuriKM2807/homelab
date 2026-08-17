Boa noite :)
Meu Homelab - Servidor Caseiro

Repositório central de configurações e automações para o meu servidor doméstico (Laptop-Servidor). 
Esta infraestrutura utiliza **Docker** e **Docker Compose** para isolar e gerenciar múltiplos serviços de 
forma leve e segura.

---

erviços Inclusos

| **Plex** | Servidor de mídia (Filmes e Séries) | `32400` | `~/Midia` e `./servicos/plex/config` |
| **Vaultwarden** | Gerenciador de senhas (Bitwarden leve) | `8080` | `./servicos/vaultwarden/vw-data` |

---

Estrutura do Repositório

meu-homelab/
├── deploy.sh                   # Script de automação para subir todos os serviços
├── .gitignore                  # Arquivos e pastas ignorados pelo Git (segurança)
├── README.md                   # Documentação do projeto
└── servicos/
    ├── plex/
    │   └── docker-compose.yml  # Configuração do container do Plex
    └── vaultwarden/
        └── docker-compose.yml  # Configuração do container do Vaultwarden
