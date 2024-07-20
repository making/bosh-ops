#!/bin/bash

cat <<EOF > /tmp/private_key.pem
${PRIVATE_KEY}
EOF
chmod 600 /tmp/private_key.pem
mkdir -p ~/.ssh
cat <<EOF > ~/.ssh/config
host *
  StrictHostKeyChecking no
EOF