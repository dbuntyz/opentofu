output "name" {
  description = "The name of the Network Security Group"
  value       = azurerm_network_security_group.this.name
}

output "id" {
  description = "The ID of the Network Security Group"
  value       = azurerm_network_security_group.this.id
}

output "location" {
  description = "The location of the Network Security Group"
  value       = azurerm_network_security_group.this.location
}

output "security_rules" {
  description = "The security rules passed to the NSG module"
  value       = var.security_rules
}

output "resource_group_name" {
  description = "value of the resource group name"
  value       = var.resource_group_name
}

output "tags" {
  description = "value of the tags"
  value       = var.tags
}