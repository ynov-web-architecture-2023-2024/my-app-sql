# Sql container

# docker compose 
    version: '3'
networks:
  my_app_network:
    driver: bridge
services:
  my-app-sql:
    build:
      context: ./my-app-sql
    ports: 
      - 3306:3306
    networks:
      - my_app_network
  my-app-api:
    build:
      context: ./my-app-api
    ports: 
      - 3030:3030
    networks:
      - my_app_network
    depends_on:
      - my-app-sql
  my-app-front:
    build:
      context: ./my-app-front
    ports: 
      - 3000:8080
    networks:
      - my_app_network
    depends_on:
      - my-app-api

# command line to build and run docker with docker compose 
    docker compose up -d