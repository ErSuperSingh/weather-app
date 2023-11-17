#!/bin/bash

# Navigate to the application directory
cd /home/ubuntu/weather-app

# Check if the Node.js application is running using pm2
if pm2 id your-app-name > /dev/null 2>&1; then
  # Gracefully stop the Node.js application
  pm2 stop your-app-name
fi
