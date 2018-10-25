FROM ruby:2.3.5-alpine

RUN apk update && apk add --no-cache \
  # For the "json" gem
  build-base \
  # To be able to install gems from Github (middleman)
  git \
  imagemagick \
   # JS runtime
  nodejs \
   # For tzinfo
  tzdata 

WORKDIR /var/app
ADD . /var/app

RUN gem install bundler
RUN bundle install

RUN middleman build

EXPOSE 4567

CMD /bin/sh