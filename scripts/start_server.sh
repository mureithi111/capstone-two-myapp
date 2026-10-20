#!/bin/bash
set -e

# Start Apache on an Amazon Linux EC2 instance.

systemctl enable httpd
systemctl restart httpd

echo "Apache started successfully."
