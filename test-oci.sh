#!/bin/bash
set -e

echo "Testing OCI repository access to k0rdent Helm charts..."
echo "Attempting to login to ghcr.io..."
if ! helm registry login ghcr.io; then
  echo "Warning: Login failed, but continuing as anonymous access might work..."
fi

echo "Attempting to pull the k0rdent KCM chart..."
if helm pull oci://ghcr.io/k0rdent/kcm/charts/kcm --version 0.1.0 --destination /tmp; then
  echo "✅ Helm chart pulled successfully! OCI repository access is working."
  rm -f /tmp/kcm-0.1.0.tgz
else
  echo "❌ Failed to pull the Helm chart. Please check your network connection and credentials."
  exit 1
fi
