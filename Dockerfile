FROM ubuntu:22.04
LABEL maintainer="JuliBCN <julibcn@gmail.com>"

# Install Dependencies
ENV TZ=Europe/Dublin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get -y install apache2

# Install Apache and copy the SRC directory
RUN rm -rf /var/www/*
ADD src /var/www/html
RUN echo ServerName ${HOSTNAME} >> /etc/apache2/apache2.conf

# Choose execution port
EXPOSE 80

# Specify initialization command
CMD ["apache2ctl", "-D", "FOREGROUND"]
