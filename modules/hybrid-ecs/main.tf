terraform {
  required_providers {
    ctcloud = {
      source = "www.ctyun.cn/ctyun/ctcloud"
      version = ">=1.0.0"
    }
  }
}

resource "ctcloud_b_hybrid_ecs" "b_hybrid_ecs" {
    # region_id = var.region_id
    az_name = var.az_name
    instance_name       = var.instance_name
    display_name        = var.display_name
    flavor_id           = var.flavor_id
    image_type          = var.image_type
    image_id            = var.image_id
    vpc_id              = var.vpc_id
    network_card_list   = var.network_card_list
    ext_ip              = var.ext_ip
    boot_disk_type      = var.boot_disk_type
    boot_disk_size      = var.boot_disk_size
    // optional
    zone = var.zone
    project_id = var.project_id
    sec_group_list = var.sec_group_list
    data_disk_list =var.data_disk_list
    ip_version = var.ip_version
    bandwidth = var.bandwidth
    eip_id              = var.eip_id
    affinity_group_id = var.affinity_group_id
    key_pair_id = var.key_pair_id
    user_password = var.user_password
    user_data = var.user_data
    order_count         = var.order_count
    // query
    instance_id_list = var.instance_id_list
    // instance_id = ""
    // job_id = ""
    flavor_series = var.flavor_series
    flavor_arch = var.flavor_arch
    flavor_ram = var.flavor_ram
    flavor_cpu = var.flavor_cpu
    flavor_name = var.flavor_name
}
