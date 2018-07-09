FROM rust:1
MAINTAINER chris.nixon@sigma.me.uk

RUN apt-get update
RUN apt-get install libsqlite3-dev git-crypt
