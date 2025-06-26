terraform {
  required_version = ">= 1.6.0"

  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "~> 3.0"
    }
  }
}

provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "main" {
  name     = var.resource_group_name
  location = var.location
  tags = {
    environment = "Test"
    created_by  = "OpenTofu"
  }
}



output "rgname" {
  value       = azurerm_resource_group.main.name
  description = "The name of the resource group."
}

output "rglocation" {
  value = azurerm_resource_group.main.location
}
