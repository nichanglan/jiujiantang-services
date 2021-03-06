#!/usr/bin/env bash
set -e
set -u
set -o pipefail

CUR=`dirname $0`

ENV_FILE=${CUR=}/handler/testdata/local.svc-biz-core.env
env $(cat ${ENV_FILE} | grep -v '^#'| xargs) go run ${CUR} \
    --server_address=:9090 \
    --x_ae_config_dir=../ae/data

