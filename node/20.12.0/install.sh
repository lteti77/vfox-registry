#!/bin/bash
set -e

VERSION="20.12.0"
INSTALL_DIR="$VFOX_HOME/tools/node/$VERSION"
ARCH="linux-x64"

echo "Installing Node.js $VERSION..."

mkdir -p "$INSTALL_DIR"

# Scarica da Nexus (dove hai caricato i tar.gz)
curl -fsSL -H "Authorization: Basic bm9kZWpzLXJlcG8tdXNlcjpub2RlanMtcmVwby11c2Vy" "https://nexus.utenze.bankit.it/nexus/repository/nodejs-proxy/v${VERSION}/node-v${VERSION}-${ARCH}.tar.gz" -o /tmp/node.tar.gz

tar -xzf /tmp/node.tar.gz -C "$INSTALL_DIR" --strip-components=1
rm /tmp/node.tar.gz

echo "Node.js $VERSION installed in $INSTALL_DIR"
