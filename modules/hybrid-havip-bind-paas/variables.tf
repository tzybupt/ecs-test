variable "ha_vip_id" {
  type          = string
  description   = "VIP ID"
  nullable      = false
}

variable "resource_type" {
  type          = string
  description   = "绑定实例类型	VM-虚拟机ECS；PM-裸金属,；NETWORK-弹性 IP"
  nullable      = false
}

variable "instance_id" {
  type          = string
  description   = "ECS示例ID，当 resourceType 为 VM / PM 时，必填"
  nullable      = false
}

variable "network_interface_id" {
  type          = string
  description   = "网卡ID"
  nullable      = true
}

variable "az_name" {
  type          = string
  description   = "可用区名称"
  nullable      = true 
}

variable "floating_id" {
  type          = string
  description   = "弹性IP ID，当 resourceType 为 NETWORK 时，必填"
  nullable      = true
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

// show
variable "id" {
  type          = string
  description   = "ha_vip_id"
  nullable      = true 
}

variable "instance_info" {
  type          = list(object({
    instance_name = string
    id = string
    private_ip = string
  }))
  description   = "高可用虚IP的地址"
  nullable      = true 
}

variable "ipv4" {
  type          = string
  description   = "IPv4地址"
  nullable      = true 
}

variable "subnet_id" {
  type          = string
  description   = "子网id"
  nullable      = true 
}

variable "vpc_id" {
  type          = string
  description   = "虚拟私有云的的id"
  nullable      = true 
}

