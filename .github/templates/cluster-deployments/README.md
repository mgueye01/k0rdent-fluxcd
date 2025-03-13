# Cluster Request Workflow

This directory contains templates and configurations for the automated cluster request workflow.

## Overview

The k0rdent-fluxcd repository implements a GitHub-based workflow for requesting and deploying new Kubernetes clusters. This workflow follows GitOps principles, using GitHub issues, PRs, and actions to automate the process.

## Workflow Steps

1. **Submit Cluster Request**:
   - Create a new GitHub issue using the cluster request template
   - The issue will be automatically labeled with `cluster-request`

2. **PR Creation**:
   - When the `cluster-request` label is applied, a GitHub Action automatically creates a PR with a placeholder
   - The PR branch is named based on the issue number and title

3. **PR Approval and Configuration**:
   - When the PR is approved, another GitHub Action generates the cluster configuration files based on the issue template
   - The configuration is added to the PR branch and pushed back to the PR

4. **Deployment**:
   - When the PR is merged to `main`, a final GitHub Action applies the cluster configuration to FluxCD
   - FluxCD then creates the actual cluster based on the configuration

## Templates

This directory contains templates for different cloud providers:

- `aws/`: Templates for AWS clusters
- `azure/`: Templates for Azure clusters
- `gcp/`: Templates for GCP clusters

Each provider directory contains a `template.yaml` file that serves as the template for cluster deployments. These templates use environment variables for substitution.

## GitHub Actions

The workflow is implemented by the following GitHub Actions:

1. `create-cluster-request-pr.yml`: Creates a PR when an issue is labeled with `cluster-request`
2. `process-cluster-request.yml`: Generates cluster configuration when the PR is approved
3. `deploy-cluster-on-merge.yml`: Deploys the cluster when the PR is merged to main

## Adding New Provider Templates

To add templates for a new provider:

1. Create a new directory under `.github/templates/cluster-deployments/` with the provider name
2. Add a `template.yaml` file with the appropriate configuration
3. Update the extraction logic in the `process-cluster-request.yml` workflow if necessary

## Troubleshooting

If a workflow fails, check the GitHub Actions logs for details. Common issues include:

- Missing required parameters in the issue description
- Invalid parameter values for the selected provider
- Permission issues with the GitHub token

For assistance, contact the k0rdent team. 