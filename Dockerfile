FROM ruby:2.4.0-slim
RUN apt-get update -qq && apt-get install -y build-essential libpq-dev
ENV RAILS_ROOT /var/www/aws-docker-tutorial
RUN mkdir -p $RAILS_ROOT/tmp/pids
WORKDIR $RAILS_ROOT
RUN bundle install
RUN bundle exec rake assets:precompile
CMD bundle exec rails server
