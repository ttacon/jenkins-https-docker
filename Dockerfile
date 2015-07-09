FROM jenkins:1.565.3

MAINTAINER Trey Tacon <ttacon@gmail.com>

COPY jenkins.ks /var/lib/jenkins/jenkins.ks
ENV JENKINS_OPTS --httpPort=-1 \
      --httpsPort=8083 \
      --httpsKeyStore=/var/lib/jenkins/jenkins.ks \
      --httpsKeyStorePassword=YOLOYOLO
EXPOSE 8083