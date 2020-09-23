FROM alpine:latest

RUN apk add --no-cache python3 npm
RUN npm install -g nodemon

WORKDIR /root/dev/python

EXPOSE 8765

CMD ["nodemon", "-x", "venv/bin/python", "--watch", "/root/dev/python/src", "-u", "src/tests/test_main.py", "-e", "py"]
