#!/bin/bash

# Lista de puertos a verificar
PORTS=(5433 5432 4222 8222)

for PORT in "${PORTS[@]}"; do
    echo "Verificando el puerto $PORT..."
    if sudo lsof -i :$PORT > /dev/null; then
        echo "El puerto $PORT está en uso. Liberando..."
        PIDS=$(sudo lsof -t -i :$PORT)
        sudo kill -9 $PIDS
        echo "Puerto $PORT liberado."
    else
        echo "El puerto $PORT está libre."
    fi
done
