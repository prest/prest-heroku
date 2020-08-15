FROM prest/prest:latest

ADD ./prest.toml /app/prest.toml

# Variables that must pREST expect from heroku
# - DATABASE_URL
# - PORT
CMD /app/prestd
