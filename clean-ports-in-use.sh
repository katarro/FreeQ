#!/bin/bash
sudo aa-remove-unknown
echo "Deteniendo todos los contenedores..."
sudo docker stop $(sudo docker ps -aq)
echo "Eliminando contenedores detenidos..."
sudo docker rm $(sudo docker ps -aq)
echo "Liberando puertos ocupados..."
sudo lsof -ti :5432 | xargs sudo kill -9
echo "Listo. Ahora puedes levantar Docker Compose."
docker compose up --build -d
echo "Contenedores levantados!"
docker ps
