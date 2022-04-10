#!/bin/bash
sudo docker build -t rajneeshmahala/devx:Latest .
sudo docker push rajneeshmahala/devx:latest
sleep 12
sudo docker rmi rajneeshmahala/devx
echo "Task Completed"