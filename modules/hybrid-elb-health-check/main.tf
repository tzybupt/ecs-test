terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_hybrid_elb_health_check" "b_hybrid_elb_health_check" {
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
}
