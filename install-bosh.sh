#!/bin/bash

BOSH_VERSION=7.6.1

wget -q https://github.com/cloudfoundry/bosh-cli/releases/download/v${BOSH_VERSION}/bosh-cli-${BOSH_VERSION}-linux-amd64
chmod +x bosh-cli-${BOSH_VERSION}-linux-amd64
sudo mv bosh-cli-${BOSH_VERSION}-linux-amd64 /usr/local/bin/bosh
bosh -v