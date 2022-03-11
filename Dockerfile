FROM ubuntu:20.04

ARG OPENSSL_VERSION=1.1.1f-1ubuntu2.10

ARG DEBIAN_FRONTEND=noninteractive

RUN apt-get update && \
  apt-get install --yes openssl=${OPENSSL_VERSION} && \
  apt-get clean && \
  rm -rf /var/lib/apt/lists/*

WORKDIR /workspace

ENTRYPOINT ["openssl"]
