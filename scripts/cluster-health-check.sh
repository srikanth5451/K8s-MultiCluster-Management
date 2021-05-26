#!/bin/bash
# Checks health of all registered clusters

kubectl get clusters.management.cattle.io -A -o json | \
jq -r '.items[] | .metadata.name + " " + .status.conditions[].status'

# 2021-05-26 - chore: Update documentation
