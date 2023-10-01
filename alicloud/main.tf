provider "alicloud" {
  region = var.region
  access_key = var.access_key
  secret_key = var.secret_key
}

# Create a VPC and a VSwitch.
resource "alicloud_vpc" "vpc" {
  vpc_name       = "alicloud_ton_vpc"
  cidr_block = "172.16.0.0/12"
}

resource "alicloud_vswitch" "vswa" {
  vpc_id            = alicloud_vpc.vpc.id
  cidr_block        = "172.16.0.0/24"
  zone_id = var.zoneida
}

resource "alicloud_vswitch" "vswb" {
  vpc_id            = alicloud_vpc.vpc.id
  cidr_block        = "172.16.1.0/24"
  zone_id = var.zoneidb
}

resource "alicloud_vswitch" "vswc" {
  vpc_id            = alicloud_vpc.vpc.id
  cidr_block        = "172.16.2.0/24"
  zone_id = var.zoneidc
}
# Create a security group in the VPC created in the previous step,
# and add a security group rule to allow access from all IP addresses.
resource "alicloud_security_group" "default" {
  name = "default"
  vpc_id = alicloud_vpc.vpc.id
}

resource "alicloud_security_group_rule" "allow_all_tcp" {
  type              = "ingress"
  ip_protocol       = "tcp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 1
  security_group_id = alicloud_security_group.default.id
  cidr_ip           = "0.0.0.0/0"
}

resource "alicloud_security_group_rule" "allow_all_udp" {
  type              = "ingress"
  ip_protocol       = "udp"
  nic_type          = "intranet"
  policy            = "accept"
  port_range        = "1/65535"
  priority          = 1
  security_group_id = alicloud_security_group.default.id
  cidr_ip           = "0.0.0.0/0"
}

resource "alicloud_instance" "zoneA" {
  count = var.instances_number_a
  vswitch_id = alicloud_vswitch.vswa.id
  availability_zone = var.zoneida
  security_groups = [alicloud_security_group.default.id]
  private_ip = var.private_ips_a[count.index]
  instance_type = var.instance_c6
  image_id = "ubuntu_22_04_x64_20G_alibase_20230613.vhd"
  system_disk_category = var.disk_category
  system_disk_size = 40
  internet_charge_type = "PayByTraffic"
  internet_max_bandwidth_out = 100
  instance_charge_type = "PostPaid"
  spot_strategy = "NoSpot" # A regular Pay-As-You-Go instance.
  instance_name = "${format("val-a-%d", count.index + 1)}"
  host_name = "${format("val-a-%d", count.index + 1)}"
  password = var.host_password
  data_disks  {
      name                 = "/dev/xvdb"
      category             = var.disk_category
      size                 = var.data_disk_size
      delete_with_instance = true
      performance_level    = "PL1"
      encrypted            = false
  }

  # base64 encoded startup.sh, execute on boot
  user_data = filebase64("${path.module}/startup.sh")
}

resource "alicloud_instance" "zoneB" {
  count = var.instances_number_b
  vswitch_id = alicloud_vswitch.vswb.id
  availability_zone = var.zoneidb
  security_groups = [alicloud_security_group.default.id]
  private_ip = var.private_ips_b[count.index]
  instance_type = var.instance_c6
  image_id = "ubuntu_22_04_x64_20G_alibase_20230613.vhd"
  system_disk_category = var.disk_category
  system_disk_size = 40
  internet_charge_type = "PayByTraffic"
  internet_max_bandwidth_out = 100
  instance_charge_type = "PostPaid"
  spot_strategy = "NoSpot" # A regular Pay-As-You-Go instance.
  instance_name = "${format("val-b-%d", count.index + 1)}"
  host_name = "${format("val-b-%d", count.index + 1)}"
  password = var.host_password
  data_disks  {
    name                 = "/dev/xvdb"
    category             = var.disk_category
    size                 = var.data_disk_size
    delete_with_instance = true
    performance_level    = "PL1"
    encrypted            = false
  }

  # base64 encoded startup.sh, execute on boot
  user_data = filebase64("${path.module}/startup.sh")
}

resource "alicloud_instance" "zoneC" {
  count = var.instances_number_c
  vswitch_id = alicloud_vswitch.vswc.id
  availability_zone = var.zoneidc
  security_groups = [alicloud_security_group.default.id]
  private_ip = var.private_ips_c[count.index]
  instance_type = var.instance_c6
  image_id = "ubuntu_22_04_x64_20G_alibase_20230613.vhd"
  system_disk_category = var.disk_category
  system_disk_size = 40
  internet_charge_type = "PayByTraffic"
  internet_max_bandwidth_out = 100
  instance_charge_type = "PostPaid"
  spot_strategy = "NoSpot" # A regular Pay-As-You-Go instance.
  instance_name = "${format("val-c-%d", count.index + 1)}"
  host_name = "${format("val-c-%d", count.index + 1)}"
  password = var.host_password
  data_disks  {
    name                 = "/dev/xvdb"
    category             = var.disk_category
    size                 = var.data_disk_size
    delete_with_instance = true
    performance_level    = "PL1"
    encrypted            = false
  }

  # base64 encoded startup.sh, execute on boot
  user_data = filebase64("${path.module}/startup.sh")
}