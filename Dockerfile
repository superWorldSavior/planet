FROM ruby:2.3

RUN gem install bundler

WORKDIR /srv

ADD . /srv
RUN bundle install

VOLUME ["/srv"]

CMD [ "bundle" ]