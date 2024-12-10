FROM docker.io/library/alpine:latest AS builder
WORKDIR /app

RUN apk add --no-cache \
  git \
  cargo \
  protoc \
  pkgconfig \
  openssl \
  openssl-dev

RUN git clone https://github.com/nexus-xyz/network-api --depth 1 . 

RUN set -ex; \
  cd /app/clients/cli; \
  cargo build --release --bin prover; \

# Lokasi prover-id
VOLUME /root/.nexus
CMD ["cargo", "run", "--release", "--", "beta.orchestrator.nexus.xyz"]
