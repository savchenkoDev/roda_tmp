FROM ruby:3.0.0-alpine3.16

RUN apk add --no-cache \
  build-base \
  tzdata \
  postgresql-dev

WORKDIR /usr/src/app

COPY Gemfile Gemfile.lock ./

RUN gem update bundler && \
  bundle config set without 'development test' && \
  bundle install --jobs 4

COPY . .

EXPOSE 9291

CMD ["bin/puma"]