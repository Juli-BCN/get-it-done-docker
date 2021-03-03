# get-it-done-docker
Get IT Done Carrousel - Docker App (2021)

## Install Docker on Amazon Linux 2
> sudo yum update -y

> sudo amazon-linux-extras install -y docker

> sudo service docker start

> sudo usermod -a -G docker ec2-user

> sudo systemctl enable docker

> docker info



## Download the code and Build the container
> sudo yum install -y git

> git clone https://github.com/Juli-BCN/get-it-done-docker.git

> cd get-it-done-docker

> docker build -t get-it-done .

> docker images



## Run, Test & Stop the Docker container
> docker run -d -p 80:80 get-it-done

> curl -L http://localhost

> docker ps

> :eyeglasses: docker stop *CONTAINER_ID*


## Tag & Upload Container to DockerHub
Reference:
> :eyeglasses: docker image tag *SOURCE_IMAGE:SOURCE_TAG* *TARGET_IMAGE:TARGET_TAG*

> :eyeglasses: docker push *TARGET_IMAGE:TARGET_TAG*


Like:
> docker image tag get-it-done:latest julibcn/get-it-done-2021:latest

> docker login

> docker push julibcn/get-it-done-2021:latest



## Tag & Upload Container to GitHub Packages
Reference:
> :eyeglasses: docker image tag *SOURCE_IMAGE:SOURCE_TAG* *TARGET_IMAGE:TARGET_TAG*

> :eyeglasses: docker push ghcr.io/*OWNER_NAME/IMAGE_NAME:latest*


Like:
> docker image tag get-it-done:latest ghcr.io/juli-bcn/get-it-done-2021:latest

> docker login ghcr.io

> docker push ghcr.io/juli-bcn/get-it-done-2021:latest



## Run the image from DockerHub
> docker run -d -p 80:80 julibcn/get-it-done-2021:latest



## Run the image from GitHub Packages
> docker run -d -p 80:80 ghcr.io/juli-bcn/get-it-done-2021:latest