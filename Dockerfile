FROM prest/prest:v1 as builder

FROM alpine:latest

# Enable debugging mode. It should be disabled in production.
ENV PREST_DEBUG=true
# Disabled JWT token. It should be disabled in production.
ENV PREST_JWT_DEFAULT=false

RUN apk add --no-cache libc6-compat

COPY --from=builder /bin/prestd /bin/prestd

CMD ["/bin/prestd"]
