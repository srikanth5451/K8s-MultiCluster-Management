#!/bin/bash
# Checks health of all registered clusters

kubectl get clusters.management.cattle.io -A -o json | \
jq -r '.items[] | .metadata.name + " " + .status.conditions[].status'

# 2021-05-26 - chore: Update documentation

# 2021-02-04 - feat: Create Anthos sync policy

# 2021-01-25 - feat: Create Anthos sync policy

# 2021-04-07 - feat: Add new cluster configuration

# 2021-04-16 - fix: Resolve cluster registration

# 2021-07-14 - fix: Correct network configuration
