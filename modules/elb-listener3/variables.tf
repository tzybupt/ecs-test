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

variable "load_balance_id" {
  type          = string
  description   = "load_balance_id"
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

variable "target_group" {
  type = object({
    name        = string
    algorithm   = string
    targets 	       = list(object({ 
      instance_id    = string
      protocol_port  = number
      instance_type  = string
      weight         = number
      address        = string
    }))
    health_check 	 = object({ 
      protocol      = string
      timeout       = optional(number)
      interval      = optional(number)
      max_retry     = optional(number)
      http_method   = optional(string)
      http_url_path        = optional(string)
      http_expected_codes  = optional(string, "200")
    })
    session_sticky 	  = object({ 
      session_type    = optional(string)
      cookie_name     = optional(string)
      persistence_timeout  = optional(number)
    })
  })
  description   = "target_group"
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
