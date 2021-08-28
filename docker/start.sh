#!/bin/sh

set -e

# Install a Certificate Authority for connecting to Redis via TLS
if [ -n "${REDIS_CERTIFICATE_AUTHORITIES}" ] ; then
  echo "Installing Redis Certificate Authorities"
  printf "%s" "${REDIS_CERTIFICATE_AUTHORITIES}" > /usr/local/share/ca-certificates/server-ca.pem
  update-ca-certificates
else
  echo "REDIS_CERTIFICATE_AUTHORITIES not set"
fi

exec /usr/bin/centrifugo "$@"
