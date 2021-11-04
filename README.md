# realmsense docker

contains docker configs for deploying realmsense stack on a server

1. Clone this repository, init submodules
    ```
    git clone --recursive https://git.extacy.cc/realmsense/docker
    ```

1. Create `.env file`:
    ```
    PRODUCTION=                 # boolean

    # URL
    HTTP=                       # "https://" or "http://"
    API_URL=                    # "api.realmsense.cc"
    WEBSITE_URL=                # "realmsense.cc"
    PMA_URL=                    # "pma.realmsense.cc"
    TRAEFIK_URL=                # "traefik.realmsense.cc"

    # Traefik
    CF_DNS_API_TOKEN=           # API token with Zone.DNS:Edit permission
    CF_ZONE_API_TOKEN=          # API token with Zone.Zone:Read permission
    ACME_EMAIL=                 # Email address to receive notifications from Lets Encrypt
    TRAEFIK_DASHBOARD_AUTH=     # htpasswd -nB username

    # Discord
    DISCORD_CLIENTID=           # OAuth2 Client ID
    DISCORD_CLIENTSECRET=       # OAuth2 Client Secret
    DISCORD_REDIRECTURI=        # OAuth2 Redirect URL

    # Database
    DB_DEFAULT=                 # "rs_default"
    DB_TRACKER=                 # "rs_tracker"
    DB_CUSTOMERS=               # "rs_customers"

    DB_HOST=                    # "database"
    DB_PORT=                    # "3306"
    DB_USERNAME=
    DB_PASSWORD=
    DB_ROOT_PASSWORD=

    DB_SYNCHRONIZE=             # boolean
    DB_LOGGING=                 # boolean
    ```

1. Start Traefik

1. Start MariaDB, create user and databases (from `.env`)

1. Start API

1. Start Website