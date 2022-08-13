#!/usr/bin/env bash

set -e

#######################################
############ SET UP CLUSTER ###########
#######################################
if [[ "$(kind get clusters)" != *"intro-kubernetes"* ]]
then
  kind create cluster --name intro-kubernetes --config config.kind.yaml
fi

#######################################
######### INGRESS CONTROLLER ##########
#######################################
if [[ -z "$(kubectl get deployments ingress-nginx-controller --ignore-not-found -n ingress-nginx)" ]]
then
  # https://kind.sigs.k8s.io/docs/user/ingress/#ingress-nginx
  # The manifests contains kind specific patches to forward the hostPorts to the ingress controller, set taint tolerations and schedule it to the custom labelled node.
  kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/main/deploy/static/provider/kind/deploy.yaml
  kubectl annotate ingressclass nginx ingressclass.kubernetes.io/is-default-class=true
fi

