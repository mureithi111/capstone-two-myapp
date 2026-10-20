#!/bin/bash
set -e

# Install Apache if it is not already installed.
# Intended for Amazon Linux 2023 EC2 instances.

if ! rpm -q httpd > /dev/null 2>&1; then
    dnf install -y httpd
fi

echo "Apache installation completed."
