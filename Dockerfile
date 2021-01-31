FROM centos:7
LABEL maintainer="tester"

RUN yum update -y && yum -y install httpd net-tools 
EXPOSE 80

ENTRYPOINT ["/usr/sbin/httpd"]
CMD ["-D", "FOREGROUND"]
COPY index.html /var/www/html/index.html
