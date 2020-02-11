FROM ruby:2.3.0

RUN apt-get update -qq && apt-get install -y build-essential libpq-dev nodejs

RUN mkdir /rails-realworld-example-app
WORKDIR /rails-realworld-example-app

ADD Gemfile /rails-realworld-example-app/Gemfile
ADD Gemfile.lock /rails-realworld-example-app/Gemfile.lock

RUN bundle install
ADD . /rails-realworld-example-app
