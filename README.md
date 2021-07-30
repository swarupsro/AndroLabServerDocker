# AndroLabServerDocker
Docker image of androlabserver


## TL;DR
~~~

git clode https://github.com/swarupsro/AndroLabServerDocker.git
cd AndroLabServerDocker
docker build --tag upro:1.0 .
docker run --publish 8888:8888 --detach --name upro upro:1.0
docker rm --force upro