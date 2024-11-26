terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_elb_loadbalancer3" "b_elb_loadbalancer3" {
    // require
    // client_token = "7ec26980-25bd-432f-94cd-c16663f51d6e"
    subnet_id = var.subnet_id
    name = var.name
    resource_type = var.resource_type
    // optional
    vpc_id = var.vpc_id
    description = var.description
    eip_id = var.eip_id
    private_ip_address = var.private_ip_address
    delete_protection = var.delete_protection
    // output
    # id = var.id
    # elb_id = var.elb_id
}
