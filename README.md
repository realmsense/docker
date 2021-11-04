# realmsense docker

contains docker configs for deploying realmsense stack on a server

1. Clone this repository, init submodules
    ```
    git clone --recursive https://git.extacy.cc/realmsense/docker
    ```

1. Create `.env file`:
    ```
    PRODUCTION=boolean

    # URL
    HTTP=string
    API_URL=string
    WEBSITE_URL=string
    PMA_URL=string

    # Discord
    DISCORD_CLIENTID=string
    DISCORD_CLIENTSECRET=string
    DISCORD_REDIRECTURI=string

    # Database
    DB_DEFAULT=string
    DB_TRACKER=string
    DB_CUSTOMERS=string

    DB_HOST=string
    DB_PORT=string
    DB_USERNAME=string
    DB_PASSWORD=string
    DB_ROOT_PASSWORD=string

    DB_SYNCHRONIZE=boolean
    DB_LOGGING=boolean
    ```

1. Start MariaDB first, create user and databases (from `.env`)

1. Start API

1. Start Website