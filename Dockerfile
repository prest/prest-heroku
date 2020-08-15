FROM prest/prest:latest

ADD ./prest.toml /app/prest.toml
WORKDIR /app

# Variables that must pREST expect from heroku
# - DATABASE_URL
# - PORT
CMD ["/app/prestd"]
