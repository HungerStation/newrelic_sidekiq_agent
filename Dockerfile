FROM ruby:2.4.0
LABEL maintainer="devs@hungerstation.com"

ENV APP_HOME /home/newrelic_sidekiq_agent
WORKDIR $APP_HOME

ADD . .
RUN gem install bundler && bundle install --jobs 20 --retry 5

CMD ruby ./newrelic_sidekiq_agent