FROM ubuntu

# File Author / Maintainer
MAINTAINER rmuktader

# Update the repository sources list
RUN apt update

# Install and run apache
RUN apt install -y apache2 && apt-get clean

#ENTRYPOINT ["/usr/sbin/apache2", "-k", "start"]


#ENV APACHE_RUN_USER www-data
#ENV APACHE_RUN_GROUP www-data
#ENV APACHE_LOG_DIR /var/log/apache2

EXPOSE 80
CMD apachectl -D FOREGROUND
