#!/bin/bash
set -e

echo "🚀 Updating system packages..."
sudo dnf update -y

echo "🥬 Installing PostgreSQL 15..."
sudo dnf install -y postgresql15 postgresql15-server postgresql15-contrib

echo "🛠 Initializing PostgreSQL database..."
sudo postgresql-setup --initdb

echo "🚦 Enabling and starting PostgreSQL service..."
sudo systemctl enable postgresql
sudo systemctl start postgresql

# Verify PostgreSQL
echo "✅ PostgreSQL version: $(psql --version)"
sudo systemctl status postgresql --no-pager

echo "🎉 PostgreSQL 15 is installed and running!"
