FROM jenkins:1.565.3

MAINTAINER Trey Tacon <ttacon@gmail.com>

COPY jenkins.jks /var/lib/jenkins/jenkins.jks
ENV JENKINS_OPTS --httpPort=-1 \
      --httpsPort=8083 \
      --httpsKeyStore=/var/lib/jenkins/jenkins.jks \
      --httpsKeyStorePassword=YOLOYOLO
EXPOSE 8083