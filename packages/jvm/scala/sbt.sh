#!/bin/sh

if [ "$(uname -m)" = "x86_64" ]; then
    curl -fL https://github.com/coursier/launchers/raw/master/cs-x86_64-pc-linux.gz | gzip -d >cs && chmod +x cs && ./cs setup
elif [ "$(uname -m)" = "aarch64" ]; then
    curl -fL https://github.com/VirtusLab/coursier-m1/releases/latest/download/cs-aarch64-pc-linux.gz | gzip -d >cs && chmod +x cs && ./cs setup
else
    echo "Unsupported architecture $(uname -m)"
    exit 1
fi

echo "Coursier set up successfully!"
