#!/bin/sh
set -e

export ALLOWED_HOSTNAMES=\"${ALLOWED_HOSTNAME}\"

echo $ALLOWED_HOSTNAMES

exec "$@"