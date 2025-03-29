#!/bin/bash

# Define image name (lowercase)
IMAGE_NAME="dhanesh772/django"
TAG="2"

# Build the Docker image
echo "Building Docker image..."
docker build -t ${IMAGE_NAME}:${TAG} .

# Verify if the build was successful
if [ $? -ne 0 ]; then
    echo "Error: Docker build failed!"
    exit 1
fi

# Run the container
echo "Running the container..."
docker run -d --name django_app -p 8000:8000 ${IMAGE_NAME}:${TAG}

# Check running containers
echo "Listing running containers..."
docker ps

