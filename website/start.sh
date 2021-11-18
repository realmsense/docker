cp ../.env .
echo "" >> .env
echo "COMPOSE_PROJECT_NAME=rs_website" >> .env

cp .env container_data/website/
docker-compose up --detach