#!/bin/sh

mkdir -p /root/.nexus
echo "$PROVER_ID" > /root/.nexus/prover-id
./prover beta.orchestrator.nexus.xyz
