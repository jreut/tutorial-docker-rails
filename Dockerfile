FROM ruby:2

RUN apt-get update \
&& apt-get install -y \
  mysql-client \
  nodejs --no-install-recommends \
  postgresql-client \
  sqlite3 \
&& rm -rf /var/lib/apt/lists/*

# Note the trailing slashes here
COPY Gemfile /app/
COPY Gemfile.lock /app/
WORKDIR /app
RUN bundle install
COPY . /app

EXPOSE 3000

ENTRYPOINT ["bundle", "exec"]

CMD ["rails", "server", "-b", "0.0.0.0"]
