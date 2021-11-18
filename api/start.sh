cp ../.env .
echo "" >> .env
echo "COMPOSE_PROJECT_NAME=rs_api" >> .env

cp .env container_data/api/
docker-compose up --detach