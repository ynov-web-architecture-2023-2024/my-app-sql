# use mysql:latest as base image
FROM mysql:latest

#set env variables
ENV MYSQL_DATABASE=ynov_app
ENV MYSQL_ROOT_PASSWORD=root

#copy sql script to docker-entrypoint-initdb.d
COPY ./sql-scripts/ /docker-entrypoint-initdb.d/

#build an image on docker 
#docker build /dossier_source -t nom_image
#run an image on docker
#docker run -d -p 3306:3306 --name nom_container nom_image