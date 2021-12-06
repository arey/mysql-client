# mysql-client

[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/arey/mysql-client/) 

Docker image with a MySQL client.

This Docker image is based on Alpine Linux.
Support both Intel/AMD and ARM architectures.

Virtual size : 11 MB

From image: alpine:3.14

Mysql client: Ver 15.1 Distrib 10.1.26-MariaDB

## Usage

Execute SQL statements from an input SQL file:

```
$ docker run -v <path to sql>:/sql --link <mysql server container name>:mysql -it arey/mysql-client -h mysql -p <password> -D <database name> -e "source /sql/<your sql file>"
```

## Build and publish

```
docker buildx install
docker buildx create --use
docker buildx build --platform linux/386,linux/amd64,linux/arm64,linux/arm . -t arey/mysql-client:latest --push
```