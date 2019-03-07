FROM rust:1
MAINTAINER chris.nixon@sigma.me.uk

RUN apt-get update
RUN apt-get install -y libsqlite3-dev git-crypt

RUN rustup component add clippy rustfmt

RUN cargo install cargo-audit cargo-tomlfmt cargo-deadlinks
