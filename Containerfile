FROM docker.io/library/caddy:2.8.2-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM docker.io/library/caddy:2.8.2

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
