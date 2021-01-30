FROM centos
MAINTAINER serverworld <admin@srv.world>
RUN yum -y install httpd
RUN echo "Hello DockerFile" > /var/www/html/index.html
EXPOSE 80
CMD ["-D", "FOREGROUND"]
ENTRYPOINT ["/usr/sbin/httpd"]
