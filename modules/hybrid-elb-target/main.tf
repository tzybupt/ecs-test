terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_hybrid_elb_target" "b_hybrid_elb_target" {
    target_group_id = var.target_group_id
    instance_type = var.instance_type
    instance_id = var.instance_id
    protocol_port = var.protocol_port 
    //optional
    description = var.description
    weight = var.weight
}