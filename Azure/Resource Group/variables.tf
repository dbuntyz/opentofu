variable "resource_group_name" {
  description = "The name of the Azure Resource Group"
  type        = string
}

variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string

}

variable "location" {
  description = "The Azure region to deploy the resource group in"
  type        = string
}
