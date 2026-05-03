ARG JENKIS_TAG
FROM jenkins/jenkins:${JENKIS_TAG}

COPY --chown=jenkins:jenkins plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN jenkins-plugin-cli -f /usr/share/jenkins/ref/plugins.txt

EXPOSE 8080
EXPOSE 50000