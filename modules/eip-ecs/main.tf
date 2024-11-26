terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"

    }
  }
}

resource "ctcloud_b_eip_association" "b_eip_association" {
    # associate to ecs
    eip_id = var.eip_id
    association_id = var.association_id
    association_type = var.association_type
}