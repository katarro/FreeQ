
# FreeQ

FreeQ es una aplicación diseñada para transformar colas físicas en filas virtuales, permitiendo a los usuarios gestionar su tiempo de manera eficiente. Este proyecto está construido con una arquitectura de microservicios, asegurando alta escalabilidad y sincronización en tiempo real para múltiples sucursales y usuarios simultáneos.

## Características

- **Transformación de colas físicas en virtuales**: Los usuarios pueden unirse a filas sin necesidad de estar presentes físicamente.
- **Actualización en tiempo real**: Cambios en la fila reflejados instantáneamente para todos los usuarios.
- **Gestión offline**: Almacena datos de filas en memoria local en caso de desconexiones.
- **Autenticación segura**: Manejo de usuarios con JWT.

## Tecnologías utilizadas

- **Backend**: NestJS, NATS, Cache-Manager, PostgreSQL
- **Frontend**: React Native
- **Base de datos**: PostgreSQL
- **Autenticación**: JSON Web Tokens (JWT)
- **Almacenamiento en caché**: Cache-Manager
- **Comunicación en tiempo real**: WebSocket
- **Contenedores**: Docker

## Requisitos

- **Node.js** v18+
- **Docker** (para contenedores y bases de datos)
- **PostgreSQL** (como base de datos principal)
- **NATS** (para comunicación entre microservicios)

## Instalación

1. Clona este repositorio:
   ```
   git clone https://github.com/katarro/FreeQ.git
    ```
2. Instala las dependencias del backend:
   ```
    cd FreeQ/backend
    npm install
    ```
3. Crea y configura los archivos .env dado los **.env.template**.

4. Levanta los contenedores con Docker:
    ```
    docker compose up --build -d
    ```
