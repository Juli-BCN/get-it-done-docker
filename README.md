# get-it-done-docker
Get IT Done Carrousel - Docker App (2024)


## Download the code and Build the container
```bash
git clone https://github.com/Juli-BCN/get-it-done-docker.git
cd get-it-done-docker
docker build -t get-it-done .
docker images
```


## Run, Test & Stop the Docker container
```bash
docker container run -d -p 80:80 get-it-done
curl -L http://localhost
docker ps
```

> :eyeglasses: docker container stop *CONTAINER_ID*


## Tag & Upload Container to DockerHub
Reference:
> :eyeglasses: docker image tag *SOURCE_IMAGE:SOURCE_TAG* *TARGET_IMAGE:TARGET_TAG*

> :eyeglasses: docker container push *TARGET_IMAGE:TARGET_TAG*

Like:
```bash
docker image tag get-it-done julibcn/get-it-done
docker login -u julibcn
docker container push julibcn/get-it-done
```


## Tag & Upload Container to GitHub Packages
Reference:
> :eyeglasses: docker image tag *SOURCE_IMAGE:SOURCE_TAG* *TARGET_IMAGE:TARGET_TAG*

> :eyeglasses: docker container push ghcr.io/*OWNER_NAME/IMAGE_NAME*


Like:
```bash
docker image tag get-it-done ghcr.io/juli-bcn/get-it-done
docker login ghcr.io
docker container push ghcr.io/juli-bcn/get-it-done
```


## Run the image from DockerHub
```bash
docker container run --rm -d -p 80:80 julibcn/get-it-done
```


## Run the image from GitHub Packages
```bash
docker container run --rm -d -p 80:80 ghcr.io/juli-bcn/get-it-done
```