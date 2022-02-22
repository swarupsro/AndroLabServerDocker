docker build --tag upro:1.0 .
docker run --publish 8888:8888 --detach --name upro upro:1.0
