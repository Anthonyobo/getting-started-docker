FROM python:3.7-alpine
VOLUME /var/run/docker.sock:/var/run/docker.sock
RUN adduser jenkins sudo

CMD [ "python", "-c", "print('Hi there!')"]