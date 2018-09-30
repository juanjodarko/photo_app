FROM ruby:2.5-alpine
# RUN mkdir /photo_app
RUN apk add --update build-base postgresql-dev tzdata nodejs
RUN gem install rails -v '5.2'
WORKDIR /photo_app
ADD Gemfile Gemfile.lock /photo_app/
RUN bundle install