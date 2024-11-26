variable "eip_id" {
  type          = string
  description   = "eip_id"
  nullable      = false 
}

variable "id" {
  type          = string
  description   = "负载均衡ID"
  nullable      = true 
  default       = "0"
}

variable "elb_id" {
  type          = string
  description   = "elb_id"
  nullable      = false
}
