#!/bin/bash

CONTAINER_NAME="gestion_pg"
DB_USER="admin"
DB_PASS="000000"
DB_NAME="gestionpg"
IMAGE="docker.io/library/postgres:17"
SQL_FILE="init.sql"
SQL_DATA="datos.sql"

# Iniciar contenedor PostgreSQL
echo "🚀 -> Iniciando contenedor PostegreSQL..."
podman run --name "$CONTAINER_NAME" -e POSTGRES_USER="$DB_USER" -e POSTGRES_PASSWORD="$DB_PASS" -e POSTGRES_DB="$DB_NAME" -p 5432:5432 --rm -d "$IMAGE"

# Esperar unos segundos para que PostgreSQL arranque
echo "⏳ Esperando a que PostgreSQL esté listo..."
sleep 5

# Copiar archivos DQL al contenedor
echo "Copiando archivos SQL al contenedor"
podman cp "$SQL_FILE" "$CONTAINER_NAME":/tmp/"$SQL_FILE"
podman cp "$SQL_DATA" "$CONTAINER_NAME":/tmp/"$SQL_DATA"

# Ejecutando script dentro del contenedor
echo "Ejecutando script SQL..."
podman exec -it "$CONTAINER_NAME" psql -U "$DB_USER" -d "$DB_NAME" -f /tmp/"$SQL_FILE"
podman exec -it "$CONTAINER_NAME" psql -U "$DB_USER" -d "$DB_NAME" -f /tmp/"$SQL_DATA"

# Conectarte automáticamente (opcional)
#echo "🔗 Conectándote a la base de datos (psql interactivo)..."
#podman exec -it "$CONTAINER_NAME" psql -U "$DB_USER" -d "$DB_NAME"

# datos para conectarse a dbeaver
echo "Datos para conectarse con DBeaver"
echo "Host: IP de wsl"
echo "Database: gestionpg"
echo "Puerto: 5432"
echo "Usuario: admin"
echo "Pass: 000000"
