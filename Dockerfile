FROM centos:7
LABEL maintainer="tester"

RUN yum -y install httpd net-tools 
CMD ["/usr/sbin/httpd", "-D", "FOREGROUND"]
COPY index.html /var/www/html/index.html
ENTRYPOINT ["/usr/sbin/httpd"]
EXPOSE 80
