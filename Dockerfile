FROM elixir:1.5.2

RUN apt-get update && apt-get install -y build-essential postgresql-common postgresql-client

RUN mix local.rebar --force && mix local.hex --force 

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez

ADD /app /app

WORKDIR /app