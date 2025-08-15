FROM jenkins/jenkins:alpine-jdk21

ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV CASC_JENKINS_CONFIG="/var/jenkins_home/jenkins.yml"

RUN jenkins-plugin-cli --plugins configuration-as-code job-dsl
COPY jenkins.yml /var/jenkins_home/jenkins.yml
