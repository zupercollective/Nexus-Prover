FROM docker.io/library/alpine:latest
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
  mv /app/clients/cli/target/release/prover /usr/local/bin/prover

# Biar gaada menu-menunya
ENV NONINTERACTIVE=1
# Lokasi prover-id
VOLUME /root/.nexus
CMD ["prover", "beta.orchestrator.nexus.xyz"]
