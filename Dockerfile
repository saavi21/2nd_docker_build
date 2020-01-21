FROM ubuntu
RUN apt-get update  # [RUN is used to generate the custom image initially when docker container builds]
RUN apt-get install apache2 -y php7.0 libapache2-mod-php7.0
RUN a2enmod php7.0
ENV APACHE_LOG_DIR /var/log/apache2
COPY index.html /var/www/html
EXPOSE 80
CMD apachectl -D FOREGROUND   # [CMD runs everytime when container launch ]
ADD . /var/www/html
