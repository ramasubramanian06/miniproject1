#!/bin/bash
echo "Starting deployment process..."
echo "Build Docker image..."
sudo docker build -t image1 .
echo "Stopping old container if running..."
sudo docker stop project1 2>/dev/null
sudo docker rm project1 2>/dev/null
echo "Starting new container..."
sudo docker run -d -p 8082:80 --name project1 image1
echo "Deployment complete! visit http://localhost:8082"
