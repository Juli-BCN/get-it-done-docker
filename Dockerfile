FROM ubuntu:20.04
LABEL maintainer="JuliBCN <julibcn@gmail.com>"

# Install dependencies
RUN apt-get update
RUN apt-get -y install apache2

# Install Apache and copy the SRC directory with files
RUN rm -rf /var/www/*
ADD src /var/www/html
RUN echo ServerName ${HOSTNAME} >> /etc/apache2/apache2.conf

# Configure Apache to run with Docker
RUN echo '. /etc/apache2/envvars' > /root/run_apache.sh
RUN echo 'mkdir -p /var/run/apache2' >> /root/run_apache.sh
RUN echo 'mkdir -p /var/lock/apache2' >> /root/run_apache.sh
RUN echo '/usr/sbin/apache2 -D FOREGROUND' >> /root/run_apache.sh
RUN chmod 755 /root/run_apache.sh

EXPOSE 80

CMD /root/run_apache.sh