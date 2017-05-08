FROM ubuntu:xenial

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update && apt-get install -y --no-install-recommends apt-utils
RUN apt-get upgrade -y
RUN apt-get install -y luarocks vim man
RUN luarocks install busted
RUN mkdir /app

ENV DEBIAN_FRONTEND teletype

VOLUME "/app"

CMD ["ls /app"]

