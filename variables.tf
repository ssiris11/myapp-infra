variable "environment" {
  type = string
}

variable "location" {
  type = string
}

variable "prefix" {
  type = string
}

variable "container_image" {
  type = string
}
variable "sql_admin_username" {
  type        = string
  description = "SQL admin username"
}

variable "sql_admin_password" {
  type        = string
  sensitive   = true
  description = "SQL admin password"
}



