FROM elixir:1.5.2

RUN mix local.rebar --force && mix local.hex --force 

RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez

WORKDIR /app

COPY app/mix.exs app/mix.lock ./

RUN mix deps.get

COPY /app /app
