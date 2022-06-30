#!/usr/bin/env bash

# kube_cluster=$(kubectl config current-context)
# if ! kubectl get ns flux ; then kubectl create ns flux ; fi

{
  export GITHUB_TOKEN=$(cat $HOME/.secrets/.git_token)
  export GITHUB_USER="vinay-nandipur"
  export GITHUB_REPO="flux2-kustomize-helm-example"
} &> /dev/null 2>&1

flux bootstrap github \
    --context=staging \
    --owner=${GITHUB_USER} \
    --repository=${GITHUB_REPO} \
    --branch=main \
    --personal \
    --path=clusters/staging
