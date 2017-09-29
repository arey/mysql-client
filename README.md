# mysql-client

[![Docker Hub](https://img.shields.io/badge/docker-ready-blue.svg)](https://registry.hub.docker.com/u/arey/mysql-client/) 

Docker image with a MySQL client.

This Docker image is based on Alpine Linux .

Virtual size : 36.5 MB

From image: gliderlabs/alpine:3.1

Mysql client: Ver 15.1 Distrib 10.1.26-MariaDB

## Usage

Execute SQL statements from an input SQL file:

```
$ docker run -v <path to sql>:/sql --link <mysql server container name>:mysql -it arey/mysql-client -h mysql -p <password> -D <database name> -e "source /sql/<your sql file>"
```

