terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_vpce_service_whitelist" "b_vpce_service_whitelist" {
    email = var.email
    endpoint_service_id = var.endpoint_service_id
    custom_info = var.custom_info
}
