FROM alpine:3.12.3

RUN apk add iptables iproute2 wireguard-tools

COPY run.sh /run.sh

CMD ["/run.sh"]