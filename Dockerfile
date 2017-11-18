# We're using the Elixir 1.5.2 base image and extending it
FROM elixir:1.5.2

# Create a directory for your application code and set it as the WORKDIR. All following commands will be run in this directory.
RUN mkdir /app
WORKDIR /app

# Install Rebar and Hex
RUN mix local.rebar --force && mix local.hex --force 

# Install the Phoenix Mix archive
RUN mix archive.install --force https://github.com/phoenixframework/archives/raw/master/phx_new.ez

# COPY mix.exs and mix.lock and install dependencies before adding the full code so the cache only
# gets invalidated when dependencies are changed
COPY app/mix.exs app/mix.lock ./
RUN mix deps.get

# Copy the app source code into the image
COPY /app /app
