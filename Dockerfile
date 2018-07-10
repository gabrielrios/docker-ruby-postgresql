# RUBY
FROM ruby:2.2.8
MAINTAINER gabrielfalcaorios@gmail.com

# POSTGRES
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main 9.6" > /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update && apt-get install -y libpq-dev postgresql-client-9.6

# NODE
# Use Bash instead of SH
RUN apt-get update && apt-get install -y git curl build-essential libssl-dev
