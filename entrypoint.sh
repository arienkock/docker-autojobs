#!/bin/bash

for SCM in git svn hg
do
  [ -f "/var/jenkins-autojobs/$SCM-config.yaml" ] \
    && echo "Running jenkins-makejobs-$SCM" \
    && "jenkins-makejobs-$SCM" "/var/jenkins-autojobs/$SCM-config.yaml"
done

echo "Done running jenkins-makejobs-*"
exec "$@"
