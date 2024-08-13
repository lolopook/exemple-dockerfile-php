#image que l'on va utiliser du dockerhub
FROM php:8.2-apache

#copy du fichier .php que l'on copier dans le serveur à l'emplacement /var/www/html/
COPY . /var/www/html/
