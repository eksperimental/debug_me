#!/bin/bash

echo -n "0.1.0" > VERSION
mix compile --force

mix debug_me --version
ORIGINAL_VERSION=$(mix debug_me --version)
echo "original: $ORIGINAL_VERSION"

echo -n "0.2.0" > VERSION
mix debug_me --version
NEW_VERSION=$(mix debug_me --version)
echo "updated: $NEW_VERSION"

if [ "${ORIGINAL_VERSION}" = "${NEW_VERSION}" ]; then
  >&2 echo "ERROR: Version not updated."
  exit 1
else
  echo "OK: Version updated."
  exit 0
fi
