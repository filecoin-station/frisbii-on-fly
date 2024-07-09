#!/bin/sh -e

if [ "$PRIVATE_KEY" ]; then
  # See https://github.com/ipld/frisbii/issues/132#issuecomment-2216295267
  echo "Configuring private key from the environment secrets"
  mkdir ~/.frisbii
  echo "$PRIVATE_KEY" | xxd -r -p > ~/.frisbii/key
else
  echo "Private key not provided, Frisbii will create an ephemeral identity"
fi

echo "Starting frisbii" "$@"
exec /app/go/bin/frisbii "$@"
