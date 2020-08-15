FROM prest/prest:latest

ADD ./prest.toml ./prest.toml

# Variables that must pREST expect from heroku
# - DATABASE_URL
# - PORT
CMD prestd
