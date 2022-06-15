# wg-peer

An absolutely bare-bones WireGuard peer container meant to be deployed in places.

## Usage

Mount WireGuard configuration and specify interface:
```yaml
[...]
  environment:
    INTERFACE: wg0
  volumes:
  - ./wg0.conf:/etc/wireguard/wg0.conf
```

Build image:
```sh
docker compose build
```

Run service:
```sh
docker compose up -d
```

## Container as service gateway

To use the WireGuard container as a network gateway for other Compose services, add the following to a service configuration:

```yaml
  network_mode: "service:wg"
```

Where `wg` is the name of the Compose service running **wg-peer**.

This essentially forces the specified service to be the default route for network traffic. 

[Read more](https://docs.docker.com/compose/compose-file/#network_mode) about `network_mode`.
