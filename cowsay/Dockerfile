FROM debian:wheezy

MAINTAINER Amadeu Cavalcante <amadeu01@gmail.com>

RUN apt-get update && apt-get install -y cowsay fortune
COPY entrypoint.sh /
ENTRYPOINT ["/entrypoint.sh"]
