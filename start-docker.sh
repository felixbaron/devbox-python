#/bin/bash
docker run -p 8765:8765 -p 4001:4001 -v /home/ubuntu/dev:/root/dev -d devbox-python:latest
