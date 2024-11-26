output "elb_id" {
  description = "elb_id"
  value       = ctcloud_b_elb_loadbalancer3.b_elb_loadbalancer3.elb_id
}

output "private_ip_address" {
  description = "private_ip_address"
  value       = ctcloud_b_elb_loadbalancer3.b_elb_loadbalancer3.private_ip_address
}

output "ipv6_address" {
  description = "ipv6_address"
  value       = ctcloud_b_elb_loadbalancer3.b_elb_loadbalancer3.ipv6_address
}

output "eip_info" {
  description = "eip_info"
  value       = ctcloud_b_elb_loadbalancer3.b_elb_loadbalancer3.eip_info
}
