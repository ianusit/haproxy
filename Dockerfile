FROM alpine:3.3
MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update tzdata ca-certificates haproxy &&\
    cp /usr/share/zoneinfo/Europe/Berlin /etc/localtime &&\
    echo "Europe/Berlin" > /etc/timezone &&\
    rm -rf /var/cache/apk/* 

CMD ["haproxy", "-d", "-f", "/defaults/haproxy.cfg"]
