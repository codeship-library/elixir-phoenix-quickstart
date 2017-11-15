# Phoenix Quickstart with Codeship Pro
[ ![Codeship Status for whiteotter/phoenix-tutorial](https://app.codeship.com/projects/d77d6dc0-abb8-0135-1d7c-326c62bbc0df/status?branch=master)](https://app.codeship.com/projects/256820)

[Phoenix framework's up and running example](https://hexdocs.pm/phoenix/up_and_running.html#content) configured for testing on [Codeship Pro](https://codeship.com/features/pro)

## Local Setup
- Boot up app on local machine with [Docker Compose](https://docs.docker.com/compose/gettingstarted/) -- `docker-compose up`
- Run a Codeship Pro build on your local machine with our [CLI tool](https://documentation.codeship.com/pro/builds-and-configuration/cli/) -- `jet steps`

## SCM Setup
- Initialize as a new git repo -- `rm -rf .git && git init && git add . && git commit -m 'first commit'`
- Create new repository on your SCM of choice (Github, Gitlab, Bitbucket) and push commit

## CI/CD Setup
- Sign up for a [free Codeship Pro account](https://codeship.com/features/pro)
- Once signed in, follow prompts to set up a Codeship Pro project
- Commit a change to your repo and watch as a Codeship Pro build is triggered!
