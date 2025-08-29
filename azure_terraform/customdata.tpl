#!/bin/bash
set -e

# Update package index
sudo apt-get update -y

# Install dependencies
sudo apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

# Add Docker’s official GPG key
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo apt-key add -

# Add Docker repository
sudo add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) stable"

# Update package index again
sudo apt-get update -y

# Install Docker Engine
sudo apt-get install -y docker-ce docker-ce-cli containerd.io

# Add your user to the docker group (replace 'ubuntu' with your actual username if needed)
sudo usermod -aG docker ubuntu