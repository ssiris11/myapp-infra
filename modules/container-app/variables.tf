variable "name" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "cae_id" {
  type        = string
  description = "Container Apps Environment ID"
}

variable "image" {
  type        = string
  description = "Full container image reference"
}

variable "cpu" {
  type    = number
  default = 0.5
}

variable "memory" {
  type    = string
  default = "1Gi"
}

variable "target_port" {
  type    = number
  default = 8080
}

variable "acr_id" {
  type        = string
  description = "ACR resource ID"
}
