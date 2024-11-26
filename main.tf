terraform {
    required_providers {
        ctcloud = {
            source = "www.ctyun.cn/ctyun/ctcloud"
            version = ">=1.0.0"
        }
    }
}

provider "ctcloud" {
    ak        = "c77073799ac14c58959231f7b0ca9170"
    sk        = "7e030d22345f47aa9e04d63f0da0a4d3"
    env       = "test"
    region_id     = "b342b77ef26b11ecb0ac0242ac110002"
    paas_account_id = "3beb0ff33cec44e89d3ff548fc565cf6"
    master_order_id = "190497a38b3c497b971320476d07e9f3"
    paas_resource_id = "177d52d0ee0c40f0889b3d0159f5c94b"
    account_id = "ca888cf3674d4a83a42dbd71f4a09e94"
    user_id = "53e50630604f42eba9d4fd9e0d8458bf"
}

// ecs创建
module "ecs" {
  count = 1
  source = "./modules/ecs"

  az_name             = "cn-xinan1-3A"
  instance_name       = "ecs-test-001"
  display_name        = "ecs-test-001"
  flavor_id           = "e3f6290e-9a5d-5746-2aac-828cfc65436c"
  image_type          = 1
  image_id            = "ab91410d-5f8f-462a-9b29-fd3b24b7ce14"
  vpc_id              = "vpc-tsey2i4mtv"
  network_card_list   = [{subnet_id = "subnet-o9tqluozdl"}]
  ext_ip              = "0"
  boot_disk_type      = "SATA"
  boot_disk_size      = 40
  // optional
  sec_group_list = ["sg-1ltos8nwfl",]
  data_disk_list = {
    data_disk_list_inter = []
  }
  user_password = "CtyunSec@tEST2024"
  user_data = "IyEvYmluL2Jhc2gKZWNobyAiSXlFdlltbHVMMkpoYzJnS2JXdGthWElnTDJSaGRHRUtaV05vYnlBaWUxd2ljMlZ5ZG1salpWUjVjR1ZjSWpwY0lrTlRVRjlhU0VGUlYwZGNJaXhjSW1GalkyOTFiblJKWkZ3aU9sd2lZMkU0T0RoalpqTTJOelJrTkdFNE0yRTBNbVJpWkRjeFpqUmhNRGxsT1RSY0lpeGNJbkJ5YjNoNVVHOXlkRndpT250Y0luTmxjblpsY2paY0lqb3hPREE1TlN4Y0luTmxjblpsY2pWY0lqb3hPREE1TkN4Y0luTmxjblpsY2pFd1hDSTZNVGd3T1Rrc1hDSnpaWEoyWlhJMFhDSTZNVGd3T1RNc1hDSnpaWEoyWlhJelhDSTZNVGd3T1RJc1hDSnpaWEoyWlhJNVhDSTZNVGd3T1Rnc1hDSjJjMjB5WENJNk1qQXhPRElzWENKelpYSjJaWEk0WENJNk1UZ3dPVGNzWENKMmMyMHhYQ0k2TWpBeE9ESXNYQ0p6WlhKMlpYSTNYQ0k2TVRnd09UWXNYQ0p6WlhKMlpYSXlYQ0k2TVRnd09URXNYQ0p6WlhKMlpYSXhYQ0k2TVRnd09UQjlMRndpY0hKdmVIbEpjRndpT2x3aU1Ua3lMakUyT0M0d0xqRXpYQ0lzWENKemExd2lPbHdpWkRjeE5qZzFNekE1WkRNME5URTBNMk00TkRNeVl6bG1ZV0U0TWpGaVl6VmNJaXhjSW1GclhDSTZYQ0l3Tm1FM01UQXpZMlJrWkRVNU56ZG1NemsyT0RjNFlXVTBNV1ZtWXpFMU9Wd2lMRndpYzJWeWRtbGpaVWxrWENJNlhDSTJPRGt3TkRBeE1EUmtPVGcxTVdRMk9HRmhNV0ZoTmpRek5tVTNOelJpT0Z3aWZTSWdQaUF2WkdGMFlTOXBibk4wWVc1alpTMXRaWFJoWkdGMFlTNXFjMjl1T3c9PSJ8IGJhc2U2NCAtZCB8IC9iaW4vYmFzaAo="
}
output ecs {
  value = module.ecs
}
