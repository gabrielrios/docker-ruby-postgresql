    FROM ruby:2.3.1
    RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main 9.0" > /etc/apt/sources.list.d/pgdg.list
    RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
    RUN apt-get update
    RUN apt-get install -y libpq-dev postgresql-client-9.0
