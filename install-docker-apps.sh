#!/bin/bash

echo "🔧 Installing Docker & Docker Compose..."
curl -fsSL https://get.docker.com | sh
sudo usermod -aG docker $USER

echo "📁 Creating app folder..."
mkdir -p ~/docker-apps && cd ~/docker-apps

echo "⬇️ Downloading docker-compose.yml..."
curl -O https://raw.githubusercontent.com/RameshDevarajan/rpi-docker-recovery/main/docker-compose.yml

echo "🚀 Deploying stack..."
docker compose up -d

echo "✅ All containers are deployed!"
