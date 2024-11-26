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

variable "name" {
  type          = string
  description   = "name"
  nullable      = false
  default       = "default_name"
}

variable "protocol" {
  type          = string
  description   = "protocol"
  nullable      = false
  default       = "TCP"
}

variable "description" {
  type          = string
  description   = "description"
  nullable      = true
  default       = null
}

variable "timeout" {
  type          = number
  description   = "timeout"
  nullable      = true
  default       = 2
}

variable "interval" {
  type          = number
  description   = "interval"
  nullable      = true
  default       = 5
}

variable "max_retry" {
  type          = number
  description   = "max_retry"
  nullable      = true
  default       = 2
}

variable "http_method" {
  type          = string
  description   = "http_method"
  nullable      = true
  default       = null
}

variable "http_url_path" {
  type          = string
  description   = "http_url_path"
  nullable      = true
  default       = null
}

variable "http_expected_codes" {
  type          = list(string)
  description   = "http_expected_codes"
  nullable      = true
  default       = null
}

variable "health_check_id" {
  type          = string
  description   = "health_check_id"
  nullable      = true
  default       = null
}
