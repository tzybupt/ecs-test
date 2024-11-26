terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_elb_eip" "b_elb_eip" {
    # associate to elb
    id = var.id
    elb_id = var.elb_id
    eip_id = var.eip_id
}
