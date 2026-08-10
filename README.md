# 🚀 Azure Infrastructure as Code (IaC) - Batch 18

![Terraform Version](https://img.shields.io/badge/Terraform-v1.x.x-844FBA?style=for-the-badge&logo=terraform&logoColor=white)
![Azure Provider](https://img.shields.io/badge/AzureRM-v4.1.0-0089D6?style=for-the-badge&logo=microsoftazure&logoColor=white)
![tfsec Security](https://img.shields.io/badge/Security-tfsec%20Passed-blueviolet?style=for-the-badge&logo=aquasecurity&logoColor=white)
![GitHub Actions](https://img.shields.io/badge/CI%2FCD-GitHub%20Actions-2088FF?style=for-the-badge&logo=githubactions&logoColor=white)
![Status](https://img.shields.io/badge/Infrastructure-Deployed-success?style=for-the-badge)

An enterprise-grade, modular Terraform repository designed for automated provisioning of multi-environment infrastructure on **Microsoft Azure**.

---

## 🏛️ Repository Architecture

```text
batch--18/
├── 📂 PREPROD/
│   └── 📂 azurerm_resource_group/      # Pre-production Resource Group Module
│       ├── main.tf                    # Resource Group dynamic mapping
│       ├── provider.tf                # AzureRM Provider (~> 4.1.0)
│       ├── variable.tf                # Input variable schema definitions
│       └── terraform.tfvars           # Environment variable maps
│
└── 📂 PROD/
    └── 📂 azurerm_virtual_network/    # Production Virtual Network Module
        ├── main.tf                    # Virtual Network dynamic mapping
        ├── provider.tf                # AzureRM Provider (~> 4.1.0)
        ├── variable.tf                # Input variable schema definitions
        └── terraform.tfvars           # Environment variable maps
```

---

## 📊 Infrastructure Resource Inventory

| Environment | Module | Resource Name | Region | Description |
| :--- | :--- | :--- | :--- | :--- |
| **PREPROD** | `azurerm_resource_group` | `Igneous` | `West US` | Resource Group for Igneous workloads |
| **PREPROD** | `azurerm_resource_group` | `Sedimantary` | `Central India` | Resource Group for Sedimentary workloads |
| **PROD** | `azurerm_virtual_network` | `vnet-igneous` | `Central India` | VNet `10.0.0.0/16` associated with `Igneous` |
| **PROD** | `azurerm_virtual_network` | `vnet-sedimentary` | `West US` | VNet `10.0.0.0/16` associated with `Sedimantary` |

---

## ⚡ Quick Start Guide

### 1. Prerequisites
- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads) `>= 1.0`
- [Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli) `>= 2.40`

### 2. Azure Authentication
Log into your Azure account:
```bash
az login
az account set --subscription "1901e74c-f287-4ad5-a027-7e82572afe7a"
```

### 3. Deploying PREPROD Resource Groups
```bash
cd PREPROD/azurerm_resource_group
terraform init
terraform plan
terraform apply -auto-approve
```

### 4. Deploying PROD Virtual Networks
```bash
cd PROD/azurerm_virtual_network
terraform init
terraform plan
terraform apply -auto-approve
```

---

## 🌿 Git Branching Workflow

This repository strictly enforces **Feature-Branch Workflows**:
1. Never push directly to `main`.
2. Create feature branches: `git checkout -b feature/<feature-name>`
3. Validate terraform plans and submit Pull Requests.
4. Merge into `main` after verification.

---
*Maintained by Batch-18 DevOps Team*