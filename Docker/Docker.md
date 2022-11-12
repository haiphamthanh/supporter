# Docker and Docker-compose
## Guildeline
https://cloudcone.com/docs/article/how-to-install-docker-on-ubuntu-22-04-20-04/

### Install
```bash
### Docker and docker compose prerequisites
$ apt update
$ apt upgrade
$ apt install iproute2
$ apt-get install sudo
$ apt-get install curl

# Install docker
$ apt update
$ apt upgrade
$ sudo apt-get install curl apt-transport-https ca-certificates software-properties-common
$ curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -
$ sudo add-apt-repository "deb [arch=amd64] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable"
# sudo apt update
# sudo apt install docker-ce docker-ce-cli containerd.io
$ apt-get update
$ apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin
$ service docker start

# Install docker-compose
$ sudo curl -L "https://github.com/docker/compose/releases/download/v2.12.2/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
$ sudo chmod +x /usr/local/bin/docker-compose
$ sudo apt install nmap && nmap

# Install oh-my-zsh
$ apt-get install git zsh -y
$ sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Check port
$ sudo nmap -v -sF localhost
```

### Commandline
```
<!-- Version -->
$ docker version

<!-- Status  -->
$ systemctl status docker

<!-- Start docker -->
$ systemctl enable docker

<!-- System startup enable -->
$ systemctl enable docker

<!-- Restart docker -->
$ systemctl restart docker

<!-- Test docker -->
$ docker run hello-world

<!-- Show images -->
$ docker images

<!-- Show containers -->
$ docker ps -a

<!-- Reload Nginx -->
$ docker exec -it nginx-server nginx -s reload

<!-- Enter in a Docker container already running -->
$ docker exec -it [container-id] bash

<!-- Delete all containers  -->
$ docker rm -vf $(docker ps -aq)

<!-- Delete all images -->
$ docker rmi -f $(docker images -aq)

<!-- Delete everythings -->
$ docker system prune -a --volumes

<!-- Show host mapping -->
$ sudo nmap -v -sV localhost
```

### Docker volumes
https://~

```
<!-- Sample -->
```

### Docker network
https://www.youtube.com/watch?v=k1SwXOxvMdE
https://docs.docker.com/engine/reference/commandline/network_connect/

```
<!-- Create a network -->
docker network create [OPTIONS] NETWORK

<!-- List networks -->
docker network ls [OPTIONS]

<!-- Connect a container to a network -->
docker network connect [OPTIONS] NETWORK CONTAINER

<!-- Disconnect a container from a network -->
docker network disconnect [OPTIONS] NETWORK CONTAINER

<!-- Inspect network -->
$ docker network inspect bridge

<!-- Remove one or more networks -->
docker network rm NETWORK [NETWORK...]

<!-- Remove all unused networks -->
docker network prune [OPTIONS]
```

### Docker-compose
https://morioh.com/p/1f392845b617
https://docs.docker.com/engine/install/ubuntu/#set-up-the-repository

```
<!-- Version -->
$ docker-compose version

<!-- Run without caching -->
$ docker-compose down && docker-compose build --no-cache && docker-compose up -d
```

## Some utils docker images
**busy box**
```
BusyBox là một tập hợp các chương trình Unix cốt lõi được đóng gói dưới dạng một tệp nhị phân duy nhất. 
Điều này làm cho nó trở nên lý tưởng cho các môi trường hạn chế tài nguyên, chẳng hạn như các thiết bị nhúng. 
Bản phân phối đầy đủ chứa gần 400 lệnh phổ biến nhất.
```

## Problems
**Docker container will automatically stop after "docker run -d"**
```
<!-- https://stackoverflow.com/questions/30209776/docker-container-will-automatically-stop-after-docker-run-d -->

The centos dockerfile has a default command bash.
That means, when run in background (-d), the shell exits immediately.
In that case, you don't need any additional command and this is enough: docker run -t -d centos
```

**Assign a port mapping to an existing docker container**
```
<!-- https://stackoverflow.com/questions/19335444/how-do-i-assign-a-port-mapping-to-an-existing-docker-container -->

$ docker stop container01
$ docker commit container01 image01
$ docker rm container01
$ docker run -d -P --name container01 image01
```

**Use for docker**
```
<!-- https://stackoverflow.com/questions/19335444/how-do-i-assign-a-port-mapping-to-an-existing-docker-container -->

# Create image from container
$ docker commit <container name> <image name>

# Run docker
$ docker run -p 81:80 -itd --name <containner name> --privileged=true <docker image>
```

**Error starting daemon:... invalid cross-device link**
```
https://github.com/docker/for-linux/issues/230

$ sudo dockerd
$ docker run -itd --name u_node --privileged -v /var/lib/docker u_node2
```

**Sample commit and start with privalleged**
```
$ docker stop u_node
$ docker commit u_node u_node2
$ docker rm u_node
$ docker run -p 81:80 -itd --name u_node --privileged=true u_node2
```

**Start with privileged that can be use docker**
```
https://www.cnblogs.com/odetocherryblossoms/p/16427597.html

$ docker run -itd --name u_node --privileged=true ubuntu
```

**Error starting daemon:... invalid cross-device link**
```
https://github.com/docker/for-linux/issues/230

$ docker run -itd --name u_node --privileged -v /var/lib/docker u_node2
```
