FROM python:3.7-alpine
USER root
RUN apt-get update &&
apt-get -y install docker-ce &&
apt-get -y install sudo

VOLUME /var/run/docker.sock:/var/run/docker.sock
RUN adduser jenkins sudo
RUN echo “jenkins ALL=NOPASSWD: ALL” >> /etc/sudoers
RUN usermod -aG docker jenkins
RUN chmod 777 /var/run/docker.sock
RUN chown root:jenkins /var/run/docker.sock
USER jenkins
CMD [ "python", "-c", "print('Hi there!')"]