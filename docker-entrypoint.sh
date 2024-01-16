#!/bin/sh
set -e

export ALLOWED_HOSTNAMES=\"${ALLOWED_HOSTNAMES}\"

exec "$@"