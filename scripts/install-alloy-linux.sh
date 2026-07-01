#!/usr/bin/env bash

set -euo pipefail

ALLOY_VERSION=v1.17.0
#source .env 2>/dev/null
ALLOY_VERSION="${ALLOY_VERSION#v}"

echo "Installing Grafana Alloy ${ALLOY_VERSION}..."

wget -q https://github.com/grafana/alloy/releases/download/v${ALLOY_VERSION}/alloy-${ALLOY_VERSION}-1.amd64.deb

sudo dpkg -i alloy-${ALLOY_VERSION}-1.amd64.deb

sudo cp alloy/linux/config.alloy /etc/alloy/config.alloy

sudo systemctl enable alloy
sudo systemctl restart alloy

echo
echo "Grafana Alloy installation completed."
echo
systemctl --no-pager --full status alloy