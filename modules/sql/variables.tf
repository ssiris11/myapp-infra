variable "server_name" {
  type = string
}

variable "database_name" {
  type = string
}

variable "location" {
  type = string
}

variable "resource_group_name" {
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

