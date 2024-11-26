# variable "client_token" {
#   type          = string
#   description   = "client_token"
#   nullable      = false 
# }

# variable "region_id" {
#   type          = string
#   description   = "region_id"
#   nullable      = false 
# }

variable "subnet_id" {
  type          = string
  description   = "subnet_id"
  nullable      = false
}

variable "name" {
  type          = string
  description   = "name"
  nullable      = false
}

variable "sla_name" {
  type          = string
  description   = "sla_name"
  nullable      = false
  default       = "elb.default"
}

variable "resource_type" {
  type          = string
  description   = "resource_type"
  nullable      = false
}

variable "project_id" {
  type          = string
  description   = "project_id"
  nullable      = false
  default       = "0"
}

variable "vpc_id" {
  type          = string
  description   = "vpc_id"
  nullable      = true
  default       = null
}

variable "description" {
  type          = string
  description   = "description"
  nullable      = true
  default       = null
}

variable "eip_id" {
  type          = string
  description   = "eip_id"
  nullable      = true
  default       = null
}

variable "private_ip_address" {
  type          = string
  description   = "private_ip_address"
  nullable      = true
  default       = null
}

variable "delete_protection" {
  type          = bool
  description   = "delete_protection"
  nullable      = true
  default       = false
}

variable "elb_id" {
  type          = string
  description   = "elb_id"
  nullable      = true
  default       = null
}

variable "ipv6_address" {
  type          = string
  description   = "ipv6_address"
  nullable      = true
  default       = null
}

variable "admin_status" {
  type          = string
  description   = "admin_status"
  nullable      = true
  default       = null
}

variable "status" {
  type          = string
  description   = "status"
  nullable      = true
  default       = null
}

variable "created_time" {
  type          = string
  description   = "created_time"
  nullable      = true
  default       = null
}

variable "updated_time" {
  type          = string
  description   = "updated_time"
  nullable      = true
  default       = null
}

