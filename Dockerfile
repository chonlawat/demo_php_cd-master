FROM php:7.0-apache

RUN apt-get update && \
    apt-get install -y php5-mysql && \
    apt-get clean

RUN mkdir /var/www/html/myapp
	
COPY atdd var/www/html/myapp
COPY test var/www/html/myapp
COPY vendor var/www/html/myapp
COPY web var/www/html/myapp
COPY composer.json var/www/html/myapp
COPY composer.lock var/www/html/myapp
COPY phpunit.xml var/www/html/myapp
COPY README.md var/www/html/myapp
COPY sonar-project.properties var/www/html/myapp
