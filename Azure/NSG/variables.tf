variable "subscription_id" {
  description = "Azure Subscription ID"
  type        = string
  default     = "ab1b1ec7-da7b-480d-97e9-5d6daf8271d5"
}

variable "tenant_id" {
  description = "Azure Tenant ID"
  type        = string
  default     = "09843e8a-c16a-4686-b94e-788f2f44ce92"

}

variable "resource_group_name" {
  description = "Name of the existing resource group"
  type        = string
  default     = "Test-RG"
}

variable "location" {
  description = "Azure region where the NSG will be created"
  type        = string
  default     = "Central India"
}

variable "nsg_name" {
  description = "Name of the Network Security Group"
  type        = string
  default     = "default-nsg"
}
