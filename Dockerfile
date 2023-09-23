FROM alpine:latest

RUN set -xv; \
    apk add --update tinyproxy && \
    rm -rf /var/cache/apk/*

COPY ./tinyproxy.conf /etc/

ENTRYPOINT [ "tinyproxy", "-d" ]
CMD [ "-c", "/etc/tinyproxy.conf"]
EXPOSE 3128
