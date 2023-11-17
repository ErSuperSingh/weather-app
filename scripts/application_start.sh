#!/bin/bash

# Exit on error
set -e

# Navigate to the application directory
cd /home/ubuntu/weather-app

# Add npm and node to path using NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install node modules
npm install

# Start the Node.js application
npm start -- your-app-name > /home/ubuntu/React-Ecommerce/app.log 2>&1 &
pid=$!

# Wait for the application to start (you can adjust the sleep time based on your application's startup time)
sleep 15

# Check if the application is running
if ps -p $pid > /dev/null; then
    echo "Node.js application started successfully with PID $pid."
    exit 0
else
    echo "Failed to start Node.js application. Check app.log for details."
    exit 1
fi