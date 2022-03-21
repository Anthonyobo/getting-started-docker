FROM python:3.7-alpine
VOLUME /var/run/docker.sock:/var/run/docker.sock
CMD [ "python", "-c", "print('Hi there!')"]