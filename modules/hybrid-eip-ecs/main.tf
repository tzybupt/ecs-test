terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"

    }
  }
}

resource "ctcloud_b_hybrid_eip_association" "b_hybrid_eip_association" {
    # associate to ecs
    eip_id = var.eip_id
    association_id = var.association_id
    association_type = var.association_type
    az_name = var.az_name
    project_id = var.project_id
}