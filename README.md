# 🐘 OpenTofu Infrastructure Repository

Welcome to your **OpenTofu Infrastructure as Code (IaC)** repository! This repo is designed to house all your OpenTofu configurations and modules for managing cloud infrastructure across Azure, AWS, and GCP.

![OpenTofu Logo](https://opentofu.org/img/logo.svg)

---



## 🚀 Getting Started

### Prerequisites

- [Install OpenTofu](https://opentofu.org/docs/install/)
- [Install Azure CLI](https://learn.microsoft.com/en-us/cli/azure/install-azure-cli)
- Git installed and configured

### Setup Instructions

```bash
git clone https://github.com/dbuntyz/opentofu.git
cd opentofu

tofu init        # Initialize Tofu environment
tofu plan        # Review the execution plan
tofu apply       # Apply infrastructure changes
```

---

## 🔐 Secrets Management

Avoid hardcoding secrets in `.tf` files.
- Use `terraform.tfvars` or `.auto.tfvars`
- Use environment variables or Azure Key Vault for secure injection

---

## 🧠 Best Practices

- Use `tofu fmt -recursive` to format code
- Always run `tofu validate` before committing
- Use remote backend with state locking (Azure Blob, AWS S3)
- Structure infrastructure by module and environment
- Commit `*.tf` files but not `*.tfstate` or `*.tfvars`

---

## 🧰 Common Commands

```bash
tofu init                  # Initialize working directory
tofu validate              # Validate configuration
tofu plan                  # Preview changes
tofu apply                 # Apply configuration
tofu destroy               # Tear down infrastructure
tofu fmt -recursive        # Format configuration files
tofu workspace list        # List environments
```

