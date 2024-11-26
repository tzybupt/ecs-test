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

variable "target_group_id" {
  type          = string
  description   = "target_group_id"
  nullable      = false 
}

variable "instance_type" {
  type          = string
  description   = "instance_type"
  nullable      = false 
  default       = "vm"
}

variable "instance_id" {
  type          = string
  description   = "instance_id"
  nullable      = false 
}

variable "protocol_port" {
  type          = number
  description   = "protocol_port"
  nullable      = false 
}

variable "description" {
  type          = string
  description   = "description"
  nullable      = true
  default       = null
}

variable "weight" {
  type          = number
  description   = "weight"
  nullable      = true
  default       = 100
}

variable "target_id" {
  type          = string
  description   = "target_id"
  nullable      = true
  default       = null
}

