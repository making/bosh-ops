#!/bin/bash

wget -q https://github.com/cloudfoundry/bosh-cli/releases/download/v7.6.1/bosh-cli-7.6.1-linux-amd64
chmod +x bosh-cli-7.6.1-linux-amd64
sudo mv bosh-cli-7.6.1-linux-amd64 /usr/local/bin/bosh
bosh -v