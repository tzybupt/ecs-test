variable "endpoint_name" {
  type          = string
  description   = "终端节点名称"
  nullable      = false
}

variable "subnet_id" {
  type          = string
  description   = "子网id"
  nullable      = false
}

variable "vpc_id" {
  type          = string
  description   = "vpc_id"
  nullable      = false
}

variable "ip" {
  type          = string
  description   = "ip"
  nullable      = true
  default       = null
}

variable "whitelist_flag" {
  type          = number
  description   = "whitelist_flag"
  nullable      = false 
  default       = 0
}

variable "whitelist" {
  type          = string
  description   = "whitelist"
  nullable      = true
  default       = null
}

variable "enable_dns" {
  type          = bool
  description   = "enable_dns"
  nullable      = true
  default       = false
}

variable "endpoint_service_id" {
  type          = string
  description   = "终端节点服务id"
  nullable      = false 
}
