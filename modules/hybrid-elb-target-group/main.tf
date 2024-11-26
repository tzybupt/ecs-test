terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_hybrid_elb_target_group" "b_hybrid_elb_target_group" {
    vpc_id = var.vpc_id
    name = var.name
    algorithm = var.algorithm
    // optional
    description = var.description 
    health_check_id = var.health_check_id
    session_sticky = var.session_sticky
    project_id = var.project_id
}
