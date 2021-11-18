cp ../.env .
echo "" >> .env
echo "COMPOSE_PROJECT_NAME=rs_mariadb" >> .env

docker-compose up --detach