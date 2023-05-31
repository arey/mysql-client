FROM alpine:3.14
RUN apk add --no-cache mysql-client mariadb-connector-c-dev
ENTRYPOINT ["mysql"]
