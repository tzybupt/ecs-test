variable "email" {
  type          = string
  description   = "租户的邮箱，需要将此邮箱加入到终端节点服务白名单"
  nullable      = false 
}

variable "endpoint_service_id" {
  type          = string
  description   = "终端节点服务id"
  nullable      = false 
}
