#!/usr/bin/env bash

# Set variables
GIT_ORG=${GIT_ORG:-client-engineering-gitops-htz} 
GIT_BRANCH_HTZ=${GIT_BRANCH_HTZ:-master}

# Create Kubernetes Secret yaml
( echo "cat <<EOF" ; cat cntk-event-listener.yaml_template ;) | \
GIT_ORG=${GIT_ORG} \
GIT_BRANCH_HTZ=${GIT_BRANCH_HTZ} \
sh > cntk-event-listener.yaml