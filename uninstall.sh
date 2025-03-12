#!/usr/bin/env bash
flux uninstall -s --namespace=flux-system || exit
kubectl delete all -n podinfo --all || exit
kubectl delete all -n capacitor --all