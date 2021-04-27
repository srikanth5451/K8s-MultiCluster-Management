#!/bin/bash
# Checks health of all registered clusters

kubectl get clusters.management.cattle.io -A -o json | \
jq -r '.items[] | .metadata.name + " " + .status.conditions[].status'
