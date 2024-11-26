terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_elb_target_group" "b_elb_target_group" {
    # client_token = var.client_token
    # region_id = var.region_id
    vpc_id = var.vpc_id
    name = var.name
    algorithm = var.algorithm
    // optional
    description = var.description 
    health_check_id = var.health_check_id
    session_sticky = var.session_sticky # check
    project_id = var.project_id
    // output
    # id = var.id
    # id = var.id
}
