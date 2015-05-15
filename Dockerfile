FROM gliderlabs/alpine:3.1
RUN apk --update add mysql-client
ENTRYPOINT ["mysql"]