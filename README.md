# realmsense docker

contains docker configs for deploying realmsense stack on a server

1. Clone this repository, init submodules
    ```
    git clone --recursive https://git.extacy.cc/realmsense/docker
    ```

1. Create `.env file`:
    ```
    API_URL=
    WEBSITE_URL=
    PMA_URL=

    # Discord
    DISCORD_CLIENTID=
    DISCORD_CLIENTSECRET=
    DISCORD_REDIRECTURI=

    # Database
    DB_DEFAULT=
    DB_TRACKER=
    DB_CUSTOMERS=

    DB_HOST=
    DB_PORT=
    DB_USERNAME=
    DB_PASSWORD=
    DB_ROOT_PASSWORD=

    DB_SYNCHRONIZE=boolean
    DB_LOGGING=false
    ```

1. Start MariaDB first, create user and databases (from `.env`)

1. Start API

1. Start Website