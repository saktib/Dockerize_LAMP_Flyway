FROM ubuntu:16.04
ENV DEBIAN_FRONTEND=noninteractive
RUN apt-get update -y
RUN apt-get upgrade -y
RUN apt-get install -y apache2 
RUN apt-get install -y software-properties-common
RUN LC_ALL=C.UTF-8 add-apt-repository -y ppa:ondrej/php 
RUN apt-get update -y
RUN apt-get install -y php7.4-fpm
RUN apt-get install -y php7.4-mysql
RUN apt-get install -y php7.4-curl
RUN apt-get install -y php7.4-json
RUN apt-get install -y php7.4-common
RUN apt-get install -y libapache2-mod-php 
RUN apt-get install -y composer

CMD ["apachectl","-D","FOREGROUND"]
RUN a2enmod rewrite