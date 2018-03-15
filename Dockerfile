FROM ruby:2.4.2

WORKDIR /queue

ADD . /queue

RUN gem install bundle
