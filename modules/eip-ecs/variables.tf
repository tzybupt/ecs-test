variable "project_id" {
  type          = string
  description   = "project_id"
  nullable      = true
  default       = "0"
}

variable "eip_id" {
  type          = string
  description   = "eip_id"
  nullable      = false 
}

variable "association_id" {
  type          = string
  description   = "eip_id"
  nullable      = false 
}

variable "association_type" {
  type          = string
  description   = "association_type"
  nullable      = false 
}