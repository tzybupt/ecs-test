terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_elb_target" "b_elb_target" {
    # client_token = var.client_token
    # region_id = var.region_id
    target_group_id = var.target_group_id
    instance_type = var.instance_type
    instance_id = var.instance_id
    protocol_port = var.protocol_port 
    //optional
    description = var.description
    weight = var.weight
    // output
    # id = var.id
    # target_id = var.target_id
}