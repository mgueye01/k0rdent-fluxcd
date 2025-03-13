#!/bin/bash
set -e

echo "Testing OCI repository access..."
helm registry login ghcr.io || echo "Login failed, but continuing..."
helm pull oci://ghcr.io/k0rdent/kcm/charts/kcm --version 0.1.0 --destination /tmp
echo "Helm chart pulled successfully!"
