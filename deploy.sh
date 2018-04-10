#!/usr/bin/env bash
set -euo pipefail
IFS=$'\n\t'

BUCKET=bashtemplate.sh

#/ Usage: ./deploys.sh
#/ Description: Deploys bashtemplate.sh to s3
#/ Options:
#/   --help: Display this help message
usage() { grep '^#/' "$0" | cut -c4- ; exit 0 ; }
expr "$*" : ".*--help" > /dev/null && usage

readonly LOG_FILE="/tmp/$(basename "$0").log"
info()    { echo "[INFO]    $@" | tee -a "$LOG_FILE" >&2 ; }
warning() { echo "[WARNING] $@" | tee -a "$LOG_FILE" >&2 ; }
error()   { echo "[ERROR]   $@" | tee -a "$LOG_FILE" >&2 ; }
fatal()   { echo "[FATAL]   $@" | tee -a "$LOG_FILE" >&2 ; exit 1 ; }

if [[ "${BASH_SOURCE[0]}" = "$0" ]]; then
    info Deploying to s3
    aws s3 cp bashtemplate.sh s3://$BUCKET/
fi
