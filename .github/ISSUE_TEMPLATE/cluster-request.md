---
name: New Cluster Request
about: Request a new k0rdent managed cluster
title: "[CLUSTER REQUEST] - "
labels: cluster-request
assignees: ''
---

## Cluster Information

**Cluster Name**: 
<!-- Name of the cluster (alphanumeric, dash allowed, no spaces) -->

**Environment**:
<!-- e.g., dev, staging, production -->

**Provider**:
<!-- Choose one:
- aws-eks
- aws-standalone
- aws-hosted-cp 
- azure-aks
- azure-standalone
- azure-hosted-cp
- vsphere-standalone
- vsphere-hosted-cp
- openstack-standalone
-->

**Management Cluster**:
<!-- Specify which management cluster should manage this cluster -->

**Region/Location**:
<!-- AWS region, Azure region, or datacenter location -->

**Resource Size**:
<!-- 
For cloud providers, specify instance types for control plane and worker nodes
For on-prem, specify CPU/RAM/Storage requirements
-->

**Node Count**:
<!-- Number of worker nodes for the cluster -->

**Additional Configuration**:
<!-- Any other specific requirements for the cluster -->

## Business Justification

**Purpose**:
<!-- What will this cluster be used for? -->

**Team**:
<!-- Which team will be using this cluster? -->

**Duration**:
<!-- How long will the cluster be needed? Temporary or permanent? -->

**Cost Center**:
<!-- If applicable, which cost center should be charged -->

## Approvals
<!-- Leave this section - it will be filled by approvers -->

- [ ] Technical Approval
- [ ] Cost Approval (if needed)
- [ ] Security Approval (if needed) 