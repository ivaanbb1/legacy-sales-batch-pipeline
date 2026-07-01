#!/usr/bin/env bash
set -euo pipefail

cd "$(dirname "$0")/.."
mkdir -p data/output
cobc -x -free -I copybooks -o data/output/SALESBATCH cobol/SALESBATCH.cbl
./data/output/SALESBATCH
