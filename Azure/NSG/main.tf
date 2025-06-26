provider "azurerm" {
  features {}

  subscription_id = var.subscription_id
  tenant_id       = var.tenant_id
}

module "nsg" {
  source              = "../modules/nsg"
  name                = var.nsg_name
  location            = var.location
  resource_group_name = var.resource_group_name

  security_rules = [
    {
      name                       = "AllowSSH"
      priority                   = 100
      direction                  = "Inbound"
      access                     = "Allow"
      protocol                   = "Tcp"
      source_port_range          = "*"
      destination_port_range     = "22"
      source_address_prefix      = "*"
      destination_address_prefix = "*"
    }
  ]
  tags = var.tags
}

output "nsg-id" {
  value = module.nsg.id
}

output "nsg-name" {
  value = module.nsg.name
}
 output "security_rules" {
   value = module.nsg.security_rules
 }
 output "resource_group_name" {
  value       = var.resource_group_name
}

output "tags" {
  value       = var.tags
}