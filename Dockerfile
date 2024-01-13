FROM ubuntu:22.04
LABEL maintainer="JuliBCN <julibcn@gmail.com>"

# Install Dependencies
ENV TZ=Europe/Dublin
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone
RUN apt-get update && apt-get -y install apache2

# Install Apache and copy the SRC directory
RUN rm -rf /var/www/*
ADD src /var/www/html

# Choose execution port
EXPOSE 80

# Specify initialization command
CMD ["apache2ctl", "-D", "FOREGROUND"]
