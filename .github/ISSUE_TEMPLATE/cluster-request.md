---
name: Kubernetes Cluster Request
about: Request a new Kubernetes cluster managed by k0rdent
title: "[Cluster Request] "
labels: cluster-request
assignees: ''

---

## Cluster Information

**Cluster Name**:
<!-- Required: Name for the cluster (lowercase alphanumeric and dashes only) -->

**Environment**:
<!-- Required: dev, staging, prod, etc. -->

**Provider**:
<!-- Required: Choose one of the following cloud providers -->
- aws
- azure
- gcp
- vsphere

**Management Cluster**:
<!-- Required: Which management cluster should manage this cluster -->

**Region/Location**:
<!-- Required: AWS region, Azure region, GCP zone, or vSphere datacenter -->

**Resource Size**:
<!-- Specify instance types for control plane and worker nodes -->
- Control Plane: <!-- e.g., t3.medium for AWS, Standard_D2s_v3 for Azure -->
- Worker Nodes: <!-- e.g., t3.large for AWS, Standard_D4s_v3 for Azure -->

**Node Count**:
<!-- Number of worker nodes (min 1) -->

**Team**:
<!-- Team responsible for this cluster -->

**Purpose**:
<!-- Brief description of what this cluster will be used for -->

**Cost Center**:
<!-- For billing/chargeback -->

**Additional Requirements**:
<!-- Any specific requirements or additional information -->

## Business Justification

**Duration**:
<!-- How long will the cluster be needed? Temporary or permanent? -->

## Approvals
<!-- Leave this section - it will be filled by approvers -->

- [ ] Technical Approval
- [ ] Cost Approval (if needed)
- [ ] Security Approval (if needed) 