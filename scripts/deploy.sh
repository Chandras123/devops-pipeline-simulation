#!/bin/bash

echo " Cleaning up old container..."
docker stop devops-flask-app || true
docker rm devops-flask-app || true

echo " Deploying new container..."
docker run -d --name devops-flask-app -p 5000:5000 devops-flask-app

echo "Deployment Complete! Access app at http://localhost:5000"
