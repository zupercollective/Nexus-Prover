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
  cargo build --release --bin prover;

FROM docker.io/library/alpine:latest AS release
WORKDIR /root

COPY --from=builder /app/clients/cli/target/release/prover /root/prover
# https://github.com/nexus-xyz/network-api/blob/main/clients/cli/src/prover.rs#L171-L174
# Bajingan memang mereka ga bilang ini file penting
COPY --from=builder /app/clients/cli/src /root/src

# Rust ngentot
RUN apk add --no-cache libgcc

# Lokasi prover-id
VOLUME /root/.nexus
CMD ["./prover", "beta.orchestrator.nexus.xyz"]
