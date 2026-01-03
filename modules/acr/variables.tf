variable "name" {
  type        = string
  description = "ACR name (globally unique)"
}

variable "location" {
  type        = string
  description = "Azure region"
}

variable "resource_group_name" {
  type        = string
  description = "Resource group name"
}

variable "sku" {
  type    = string
  default = "Basic"
}
