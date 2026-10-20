#!/bin/bash
set -e

# Validate the Node.js application when accessible locally
# on port 3001.

echo "Waiting for the application to start..."
sleep 5

echo "Checking application health..."

curl --fail --silent --show-error \
    http://localhost:3001/health \
    > /dev/null

echo "Application health check passed."
