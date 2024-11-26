variable "subnet_id" {
  type          = string
  description   = "子网id"
  nullable      = false
}

variable "description" {
  type          = string
  description   = ""
  nullable      = true
}

variable "ip_address" {
  type          = string
  description   = ""
  nullable      = true
}

variable "vip_type" {
  type          = string
  description   = "VIP类型 虚拟IP的类型，v4-IPv4类型虚IP，v6-IPv6类型虚IP"
  nullable      = true
}

variable "network_id" {
  type          = string
  description   = "VPC ID 此字段再私有云没有意义，vpc 通过subnet 获取"
  nullable      = true 
}

variable "project_id" {
  type          = string
  description   = "项目id（非必填，并且此字段在私有云不具有实际意义）"
  nullable      = true
  default       = null
}

// header
variable "authorization" {
  type          = string
  description   = "authorization"
  nullable      = true 
}

variable "user_id" {
  type          = string
  description   = "user_id"
  nullable      = true
}

variable "vdc_id" {
  type          = string
  description   = "vdc_id"
  nullable      = true 
}

variable "ct_user_id" {
  type          = string
  description   = "ct_user_id"
  nullable      = true 
}

// response
variable "uuid" {
  type          = string
  description   = "高可用虚IP的ID"
  nullable      = true 
}

variable "ipv4" {
  type          = string
  description   = "高可用虚IP的地址"
  nullable      = true 
}
