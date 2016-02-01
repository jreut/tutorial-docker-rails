FROM ruby:2

COPY . /app
WORKDIR /app

CMD ["ruby", "main.rb"]
