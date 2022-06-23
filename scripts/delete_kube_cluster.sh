#!/usr/bin/env bash

if ! kind delete cluster --name kind
then
  tput setaf 2; echo "====================Deleted Kube Cluster!===================="
else
  tput setaf 1; echo "====================Cluster Deletion Failed!===================="
  exit 1
fi
