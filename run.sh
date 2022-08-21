echo deleting unused images first
docker image prune -fa

echo killing old docker processes
docker-compose rm -fs

echo building docker containers
docker-compose up --build -d
