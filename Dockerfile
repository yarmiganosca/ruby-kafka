FROM ruby:2.2.3

RUN gem install bundler

ADD . /app
WORKDIR /app

RUN bundle install --with development

CMD bash
