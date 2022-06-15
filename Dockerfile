FROM alpine:3.16.0

RUN apk add iptables iproute2 wireguard-tools

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

