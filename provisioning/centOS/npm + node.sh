#!/bin/bash
set -e

# Install Node.js (LTS) globally from NodeSource
curl -fsSL https://rpm.nodesource.com/setup_lts.x | sudo bash -
sudo yum install -y nodejs

# Optional: update npm to latest globally
sudo npm install -g npm@latest
