terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_hybrid_elb_listener" "b_hybrid_elb_listener" {
    load_balancer_id = var.load_balancer_id
    name = var.name
    protocol = var.protocol
    protocol_port = var.protocol_port
    # default_action = var.default_action # check
    // optional
    description = var.description
    certificate_id = var.certificate_id
    ca_enabled = var.ca_enabled
    client_certificate_id = var.client_certificate_id
    access_control_id = var.access_control_id
    access_control_type = var.access_control_type
    forwarded_for_enabled = var.forwarded_for_enabled
}
