terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_hybrid_havip_bind_paas" "b_hybrid_havip_bind_paas" {
    ha_vip_id = var.ha_vip_id
    resource_type = var.resource_type
    instance_id = var.instance_id
    network_interface_id = var.network_interface_id
    az_name = var.az_name
    floating_id = var.floating_id
    // header
    authorization = var.authorization
    user_id = var.user_id
    vdc_id = var.vdc_id
    ct_user_id = var.ct_user_id
}
