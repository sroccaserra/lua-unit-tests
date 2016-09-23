FROM ubuntu

RUN apt-get update
RUN apt-get install -y lua5.2 luarocks
RUN luarocks install busted
RUN mkdir /app

VOLUME "/app"

CMD ["ls /app"]

