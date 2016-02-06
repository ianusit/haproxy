FROM alpine:3.3

MAINTAINER Ianus IT GmbH <info@ianus-it.de>

RUN apk add --update haproxy && rm -rf /var/cache/apk/* 

CMD ["haproxy", "-d", "-f", "/defaults/haproxy.cfg"]
