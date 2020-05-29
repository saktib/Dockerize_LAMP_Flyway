FROM ubuntu:16.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y apache2

CMD ["apachectl","-D","FOREGROUND"]
RUN a2enmod rewrite