#!/usr/bin/env bash

# Set variables
GIT_ORG=${GIT_ORG:-htz-int-demo} 
echo $GIT_ORG
GIT_BRANCH_LAUREN=${GIT_BRANCH_LAUREN:-master}
echo $GIT_BRANCH_LAUREN

# Create Kubernetes Secret yaml
( echo "cat <<EOF" ; cat cntk-event-listener.yaml_template ;) | \
GIT_ORG=${GIT_ORG} \
GIT_BRANCH_LAUREN=${GIT_BRANCH_LAUREN} \
sh > cntk-event-listener.yaml