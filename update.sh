arr=("api" "website" "extractor")

# Take down containers and clear images
for i in "${arr[@]}"; do
    cd $i
    docker-compose down
    docker rmi "realmsense/$i"
    cd ..
done

# Update submodules
git submodule update --remote --recursive

# Restart all containers & build images
for i in "${arr[@]}"; do
    cd $i
    ./start.sh
    cd ..
done