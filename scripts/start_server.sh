#!/bin/bash

# Stop any running container
if [ "$(docker ps -q -f name=tilak-3-node-app)" ]; then
    docker stop tilak-3-node-app
    docker rm tilak-3-node-app
fi

# Pull the latest image from ECR
$(aws ecr get-login --no-include-email --region ap-south-1)
docker pull 038462757595.dkr.ecr.ap-south-1.amazonaws.com/tilak-3-node-app:latest

# Run the new container
docker run -d -p 3000:3000 --name tilak-3-node-app 038462757595.dkr.ecr.ap-south-1.amazonaws.com/tilak-3-node-app:latest


