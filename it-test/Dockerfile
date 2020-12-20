FROM jenkins/jenkins:lts

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG="/var/jenkins_home/jenkins.yml"

RUN /usr/local/bin/install-plugins.sh configuration-as-code
COPY jenkins.yml /var/jenkins_home/jenkins.yml
