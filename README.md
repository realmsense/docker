# realmsense docker

contains docker configs for deploying realmsense stack on a server

1. Clone this repository, init submodules
    ```
    git clone --recursive https://git.extacy.cc/realmsense/docker
    ```

1. Create `.env file`. [Template](https://git.extacy.cc/realmsense/shared/src/branch/master/README.md)

1. Start Traefik

1. Start MariaDB, create user and databases (from `.env`)
    ```sql
    CREATE DATABASE IF NOT EXISTS rs_default;
    CREATE DATABASE IF NOT EXISTS rs_tracker;
    CREATE DATABASE IF NOT EXISTS rs_customers;

    GRANT ALL PRIVILEGES ON `rs_default`.* TO 'realmsense_prod'@'%' WITH GRANT OPTION; 
    GRANT ALL PRIVILEGES ON `rs_tracker`.* TO 'realmsense_prod'@'%' WITH GRANT OPTION; 
    GRANT ALL PRIVILEGES ON `rs_customers`.* TO 'realmsense_prod'@'%' WITH GRANT OPTION; 
    ```

1. Start API

1. Start Website