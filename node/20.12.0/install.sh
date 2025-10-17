#!/bin/bash
set -e

VERSION="20.12.0"
INSTALL_DIR="$VFOX_HOME/tools/node/$VERSION"
ARCH="linux-x64"
BASE_URL="nodejs.org/dist"

echo "Installing Node.js $VERSION..."

mkdir -p "$INSTALL_DIR"

# Scarica i tar.gz
curl -fsSL "https://${BASE_URL}/v${VERSION}/node-v${VERSION}-${ARCH}.tar.gz" -o /tmp/node.tar.gz

tar -xzf /tmp/node.tar.gz -C "$INSTALL_DIR" --strip-components=1
rm /tmp/node.tar.gz

echo "Node.js $VERSION installed in $INSTALL_DIR"
