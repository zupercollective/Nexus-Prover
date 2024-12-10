#!/bin/sh

docker compose pull
docker run --rm -v "./storage:/root/.nexus" ghcr.io/zuperhunt/nexus-prover:latest \
  touch /root/.nexus/prover-id

echo ""
echo "Next step is:
1. Modify prover-id on ./storage/prover-id as root (use sudo) using your ID
2. docker compose up -d
3. ????
4. Profit"
