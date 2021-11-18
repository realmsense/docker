# API
cd api
docker-compose down
docker rmi "realmsense/api"
./start.sh
cd ..

# Website
cd website
docker-compose down
docker rmi "realmsense/website"
./start.sh
cd ..