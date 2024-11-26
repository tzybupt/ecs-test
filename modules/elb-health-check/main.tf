terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_elb_health_check" "b_elb_health_check" {
    # client_token = var.client_token
    # region_id = var.region_id
    name = var.name
    protocol = var.protocol
    // optional
    description = var.description 
    timeout = var.timeout
    interval = var.interval 
    max_retry = var.max_retry
    http_method = var.http_method
    http_url_path = var.http_url_path
    http_expected_codes = var.http_expected_codes
    // output
    # health_check_id = var.health_check_id
    # id = var.id
}
