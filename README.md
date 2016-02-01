To run this program:

1. `docker build -t basic-rails-app /`
2. `docker run -P -d --name rails basic-rails-app

Get the URL with

http://$(docker-machine ip default):$(docker port rails | cut -f2 -d:)

