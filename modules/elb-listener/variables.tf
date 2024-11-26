variable "load_balancer_id" {
  type          = string
  description   = "load_balancer_id"
  nullable      = false 
  default       = ""
}

variable "name" {
  type          = string
  description   = "name"
  nullable      = false 
}

variable "protocol" {
  type          = string
  description   = ""
  nullable      = false 
}

variable "protocol_port" {
  type          = number
  description   = "protocol_port"
  nullable      = false 
}

variable "default_action" {
  type = object({
    type                   = optional(string, "forward")
    redirect_listener_id   = optional(string)
    forward_config 	       = object({
      target_groups           = list(object({
        target_group_id        = string
        weight                 = optional(number)
      }))
    })
  })
  description   = "default_action"
  nullable      = false
}



variable "description" {
  type          = string
  description   = "description"
  nullable      = true
  default       = null
}

variable "certificate_id" {
  type          = string
  description   = "certificate_id"
  nullable      = true
  default       = null
}

variable "ca_enabled" {
  type          = bool
  description   = "ca_enabled"
  nullable      = true
  default       = false
}

variable "client_certificate_id" {
  type          = string
  description   = "client_certificate_id"
  nullable      = true
  default       = null
}

variable "access_control_id" {
  type          = string
  description   = "access_control_id"
  nullable      = true
  default       = null
}

variable "access_control_type" {
  type          = string
  description   = "access_control_type"
  nullable      = true
  default       = null
}

variable "forwarded_for_enabled" {
  type          = bool
  description   = "forwarded_for_enabled"
  nullable      = true
  default       = false
}
