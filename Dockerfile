FROM ruby:2.3.3
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs
RUN mkdir /<Flix>
WORKDIR /{Flix>
COPY Gemfile /<Flix>/Gemfile
COPY Gemfile.lock /<Flix>/Gemfile.lock
RUN bundle install
COPY . /<Flix>