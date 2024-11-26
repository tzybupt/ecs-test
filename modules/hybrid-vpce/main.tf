terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_hybrid_vpce" "b_hybrid_vpce" {
    az_name = var.az_name
    project_id = var.project_id
    endpoint_name = var.endpoint_name
    subnet_id = var.subnet_id
    vpc_id = var.vpc_id
    ip = var.ip
    whitelist_flag = var.whitelist_flag
    whitelist = var.whitelist
    enable_dns = var.enable_dns
    endpoint_service_id = var.endpoint_service_id
}

