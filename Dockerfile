FROM ubuntu:18.04
RUN apt-get update
RUN apt-get install -y net-tools apache2
EXPOSE 80
CMD ["service apache2 start"]
