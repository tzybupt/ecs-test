terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_hybrid_ecs_state" "b_hybrid_ecs_state" {
  action            = var.action
  instance_id_list  = var.instance_id_list
  force             = var.force
}
