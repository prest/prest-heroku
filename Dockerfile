FROM prest/prest:v1

ADD ./prest.toml ./prest.toml

# Variables that must pREST expect from heroku
# - DATABASE_URL
# - PORT
CMD prestd
