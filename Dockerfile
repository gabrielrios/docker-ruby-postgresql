# RUBY
FROM ruby:2.2.3
MAINTAINER david.bernheisel@scimedsolutions.com

# POSTGRES
RUN echo "deb http://apt.postgresql.org/pub/repos/apt/ trusty-pgdg main 9.6" > /etc/apt/sources.list.d/pgdg.list
RUN wget --quiet -O - https://www.postgresql.org/media/keys/ACCC4CF8.asc | apt-key add -
RUN apt-get update && apt-get install -y libpq-dev postgresql-client-9.6

# NODE
RUN curl -sL https://deb.nodesource.com/setup_6.x | bash -
RUN apt-get install -y nodejs

# PhantomJS
RUN apt-get install -y libfontconfig
RUN curl -sL https://bitbucket.org/ariya/phantomjs/downloads/phantomjs-2.1.1-linux-x86_64.tar.bz2 | tar -xj
RUN ln -s $(pwd)/phantomjs-2.1.1-linux-x86_64/bin/phantomjs /bin/phantomjs
