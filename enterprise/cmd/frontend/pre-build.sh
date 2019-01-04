#!/bin/bash

set -ex
cd $(dirname "${BASH_SOURCE[0]}")/../..

pushd ..
yarn --frozen-lockfile --network-timeout 60000
(cd web && NODE_ENV=production yarn -s run build --color)
popd

dev/generate.sh
