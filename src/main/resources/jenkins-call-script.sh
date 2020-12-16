#!/bin/bash
set -o errexit
set -o nounset
set -o xtrace

# The script is based on https://github.com/spinnaker/spinnaker/issues/2067#issuecomment-734451843

#JENKINS_URL=
#JENKINS_USER=
#JENKINS_TOKEN=
#JENKINS_SCRIPT=

COOKIE_JAR=./target/cookies

JENKINS_CRUMB=$(curl --silent --cookie-jar $COOKIE_JAR $JENKINS_URL'/crumbIssuer/api/xml?xpath=concat(//crumbRequestField,":",//crumb)' -u $JENKINS_USER:$JENKINS_TOKEN)
curl -XPOST --cookie $COOKIE_JAR --data-urlencode "script=$(< $JENKINS_SCRIPT)" "$JENKINS_URL/scriptText?${JENKINS_CRUMB/:/=}" -u $JENKINS_USER:$JENKINS_TOKEN -v
