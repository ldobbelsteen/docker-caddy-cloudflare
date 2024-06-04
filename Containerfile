FROM docker.io/library/caddy:2.7.6-builder AS builder

RUN xcaddy build \
    --with github.com/caddy-dns/cloudflare

FROM docker.io/library/caddy:2.7.6

COPY --from=builder /usr/bin/caddy /usr/bin/caddy
