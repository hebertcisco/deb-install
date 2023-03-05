#!/bin/sh

if command -v docker >/dev/null 2>&1; then
    echo "Docker is already installed."
else
    echo "Installing Docker..."
    sudo apt-get remove docker docker-engine docker.io
    sudo apt-get update
    sudo apt-get install docker.io -y
    sudo systemctl start docker
    sudo systemctl enable docker
    echo "Docker installed."
fi

if command -v docker-compose >/dev/null 2>&1; then
    echo "Docker Compose is already installed."
else
    echo "Installing Docker Compose..."
    sudo curl -L "https://github.com/docker/compose/releases/download/1.24.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
    sudo chmod +x /usr/local/bin/docker-compose
    echo "Docker Compose installed."
fi

if [ -S /var/run/docker.sock ]; then
    if ! groups | grep -q "\bdocker\b"; then
        sudo usermod -aG docker "$(whoami)"
        echo "Added current user to the docker group."
    fi
else
    echo "Docker socket not found."
fi

docker run hello-world
