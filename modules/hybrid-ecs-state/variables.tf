variable "action" {
  type          = string
  description   = "action"
  nullable      = false 
}

variable "instance_id_list" {
  type          = string
  description   = "instance_id_list"
  nullable      = false
}

variable "force" {
  type          = bool
  description   = "force"
  nullable      = true
  default       = false 
}

