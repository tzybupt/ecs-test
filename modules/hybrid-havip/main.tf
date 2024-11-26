terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_hybrid_vpce" "b_hybrid_vpce" {
    subnet_id = var.subnet_id
    description = var.description
    ip_address = var.ip_address
    vip_type = var.vip_type
    network_id = var.network_id
    project_id = var.project_id
    // header
    authorization = var.authorization
    user_id = var.user_id
    vdc_id = var.vdc_id
    ct_user_id = var.ct_user_id
}
