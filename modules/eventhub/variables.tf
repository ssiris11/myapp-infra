variable "namespace_name" {
  type = string
}
variable "eventhub_name" {
  type    = string
  default = "events"
}

variable "location" {
  type = string
}

variable "resource_group_name" {
  type = string
}

variable "partition_count" {
  type    = number
  default = 2
}

variable "message_retention" {
  type    = number
  default = 1
}
