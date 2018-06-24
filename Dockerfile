FROM arm32v7/alpine:3.7
LABEL image=dimakuz/openvpn-armhf
ENV ARCH arm32v7
MAINTAINER Dima Kuznetsov "dmitrykuzn@gmail.com"

RUN apk update && \
    apk add openvpn

RUN adduser openvpn openvpn
ADD docker-entrypoint.sh /entrypoint.sh

VOLUME /config

ENTRYPOINT ["/entrypoint.sh"]
CMD [""]
