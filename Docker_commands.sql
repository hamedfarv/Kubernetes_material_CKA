// Kubernetes
// Author: Hamed Farvardin
// Ubuntu 18.04.1 LTS 
// Install Docker on Linux

##install docker 

apt-get install docker.io

## run docker image /container

docker run hello-world

docker run busybox

docker run docker/whalesay cowsay salam!!

##check docker images

docker images

## run command from container

sudo docker run busybox ls /


##go to container intractive mode
sudo docker run -i -t busybox

sudo docker run -d busybox sleep 1000



## check docker process

docker ps
docker ps -a

### lab  create docker image##

vi index.html

<h1>Hello World</h1>

vi Dockerfile

FROM nginx:alpine
COPY . /usr/share/nginx/html

docker build -t myweb-image:v1

docker images

#Launch our newly built image providing the friendly name and tag. As it's a web server, bind port 80 to our host using the -p parameter.

docker run -d -p 80:80 webserver-image:v1

curl localhost

#To render the requests in the browser use the following links

https://localhost

#You now have a static HTML website being served by Nginx.

