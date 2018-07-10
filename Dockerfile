FROM rustdocker/rust:beta
MAINTAINER chris.nixon@sigma.me.uk

RUN apt-get update
RUN apt-get install -y libsqlite3-dev git-crypt
