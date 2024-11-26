terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_elb_loadbalancer" "b_elb_loadbalancer" {
    // require
    # client_token = var.client_token
    # region_id = var.region_id
    subnet_id = var.subnet_id
    name = var.name
    sla_name = var.sla_name
    resource_type = var.resource_type
    // optional
    project_id = var.project_id
    vpc_id = var.vpc_id
    description = var.description
    eip_id = var.eip_id
    private_ip_address = var.private_ip_address
    delete_protection = var.delete_protection
    // output
    # id = var.id
    # elb_id = var.elb_id
}
