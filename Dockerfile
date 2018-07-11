FROM cnixon1/rust-build-docker:stable
MAINTAINER chris.nixon@sigma.me.uk

# Install Docker
RUN apt-get update

RUN apt-get install -y apt-transport-https ca-certificates curl software-properties-common
RUN curl -fsSL https://download.docker.com/linux/debian/gpg | apt-key add -
RUN add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/debian \
   $(lsb_release -cs) \
   stable"
RUN apt-get update
RUN apt-get install -y docker-ce

RUN rustup target install x86_64-unknown-linux-musl
