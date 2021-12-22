cp ../.env .
echo "" >> .env
echo "COMPOSE_PROJECT_NAME=rs_extractor" >> .env

cp .env container_data/rotmg-extractor/
docker-compose up --detach