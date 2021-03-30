FROM prest/prest:v1 as builder

FROM alpine:latest

RUN apk add --no-cache libc6-compat

COPY --from=builder /bin/prestd /bin/prestd
COPY --from=builder /app/entrypoint.sh /app/entrypoint.sh
ADD ./prest.toml /app/prest.toml
WORKDIR /app

ENTRYPOINT ["sh", "/app/entrypoint.sh"]
