FROM ruby:2.4.1
RUN apt-get clean
RUN apt-get update -qq \
    && apt-get install -y build-essential libpq-dev
ENV RAILS_ROOT /var/www/aws-docker
RUN mkdir -p $RAILS_ROOT
RUN apt-get install -y nodejs
WORKDIR $RAILS_ROOT
ADD . $RAILS_ROOT
COPY config/puma.rb config/puma.rb
RUN gem install bundler
RUN bundle install
COPY . .
EXPOSE 80
CMD rails server -p 3000
# CMD bundle exec puma -C config/puma.rb


# # # This docker build is for search service worker
# FROM "ubuntu"
# RUN apt-get update \
#     && apt-get install -y apt-utils \
#     && apt-get install -y build-essential libpq-dev
# RUN apt-get install -y wget
# RUN apt-get install -y unzip
# RUN apt-get install -y default-jre \
#     && apt-get install -y default-jdk
# RUN wget https://artifacts.elastic.co/downloads/elasticsearch/elasticsearch-5.6.3.zip
# RUN sha1sum elasticsearch-5.6.3.zip
# RUN unzip elasticsearch-5.6.3.zip
# RUN cd elasticsearch-5.6.3/ && ./bin/elasticsearch
# EXPOSE 4001

# This docker build is for cache service worker
# FROM "ubuntu"
# RUN apt-get update \
#     && apt-get install -y apt-utils \
#     && apt-get install -y build-essential libpq-dev
# RUN apt-get install -y wget
# RUN apt-get install -y default-jre \
#     && apt-get install -y default-jdk
# RUN wget http://download.redis.io/redis-stable.tar.gz
# RUN tar xvzf redis-stable.tar.gz
# RUN cd redis-stable && make
# EXPOSE 4002
