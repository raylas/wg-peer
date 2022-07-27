FROM alpine:3.16.0

RUN apk add iptables ip6tables iproute2 wireguard-tools

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]

