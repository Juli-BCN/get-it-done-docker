# get-it-done-docker
Get IT Done Carrousel - Docker App (2021)

## Install Docker on Amazon Linux 2
> sudo yum update -y

> sudo amazon-linux-extras install -y docker

> sudo service docker start

> sudo usermod -a -G docker ec2-user

> sudo systemctl enable docker

> docker info



## Download and Build it
> sudo yum install -y git

> git clone https://github.com/Juli-BCN/get-it-done-docker.git

> cd get-it-done-docker

> docker build -t get-it-done .
