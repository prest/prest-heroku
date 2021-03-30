FROM prest/prest:v1

ADD ./prest.toml /app/prest.toml
WORKDIR /app

ENTRYPOINT []
CMD ["sh", "/bin/prestd"]
