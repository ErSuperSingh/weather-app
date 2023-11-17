User
#!/bin/bash

# Navigate to the application directory
cd /home/ubuntu/weather-app


# Add npm and node to path using NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"

# Install node modules
npm install
# Start the Node.js application
npm start -- your-app-name > /dev/null 2>&1 &
sleep 10
echo "Node.js application started successfully."
exit 0