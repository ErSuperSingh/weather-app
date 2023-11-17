#!/bin/bash

# Update package lists
sudo apt update

# Install necessary dependencies
sudo apt install -y curl wget build-essential

# Install NVM
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash

# Load NVM into the current shell session
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install Node.js (adjust the version if needed)
nvm install --lts

# Set the default Node.js version
nvm alias default node