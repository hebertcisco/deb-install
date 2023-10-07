#!/bin/sh

NVM_VERSION="v0.39.5"

echo "What version of Node.js do you want to use?"
echo "For example, mine will be \"16\""
read NODE_VERSION

if command -v nvm >/dev/null 2>&1; then
    echo "nvm is already installed."
else
    echo "Installing nvm..."
    curl -o- https://raw.githubusercontent.com/creationix/nvm/$NVM_VERSION/install.sh | bash
fi

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

if command -v node >/dev/null 2>&1; then
    echo "node is already installed."
else
    echo "Installing node $NODE_VERSION..."
    nvm install $NODE_VERSION
fi

nvm alias default $NODE_VERSION

npm_version=$(npm -v)
echo "npm version: $npm_version"

node_version=$(node -v)
echo "node version: $node_version"
