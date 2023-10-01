variable "host_password" {
  default = ""
}

variable "access_key" {
  default = ""
}
variable "secret_key" {
  default = ""
}


variable "region" {
  default = "eu-central-1"
}
variable "zoneida" {
  default = "eu-central-1a"
}
variable "zoneidb" {
  default = "eu-central-1b"
}
variable "zoneidc" {
  default = "eu-central-1c"
}
variable "instance_c6" {
  default = "ecs.c6.6xlarge"
}

variable "instances_number_a" {
  default = 0 # max tested - 0
}

variable "instances_number_b" {
  default = 0 # max tested - 0
}

variable "instances_number_c" {
  default = 120 # max tested - 120
}

variable "data_disk_size" {
  default = 1200
}

variable "disk_category" {
  # Basic disk -	cloud
  # Ultra disk - 	cloud_efficiency
  # Standard SSD -	cloud_ssd
  # Enhanced SSD -  cloud_essd
  default = "cloud_essd"
}

variable "private_ips_a" {
  description = "A list to configure Instance private IP address"
  type        = list(string)
  default     = [
    "172.16.0.1", "172.16.0.2", "172.16.0.3",
    "172.16.0.4", "172.16.0.5", "172.16.0.6", "172.16.0.7", "172.16.0.8", "172.16.0.9",
    "172.16.0.10", "172.16.0.11", "172.16.0.12", "172.16.0.13", "172.16.0.14", "172.16.0.15",
    "172.16.0.16", "172.16.0.17", "172.16.0.18", "172.16.0.19", "172.16.0.20", "172.16.0.21",
    "172.16.0.22", "172.16.0.23", "172.16.0.24", "172.16.0.25", "172.16.0.26", "172.16.0.27",
    "172.16.0.28", "172.16.0.29", "172.16.0.30", "172.16.0.31", "172.16.0.32", "172.16.0.33",
    "172.16.0.34", "172.16.0.35", "172.16.0.36", "172.16.0.37", "172.16.0.38", "172.16.0.39",
    "172.16.0.40", "172.16.0.41", "172.16.0.42", "172.16.0.43", "172.16.0.44", "172.16.0.45",
    "172.16.0.46", "172.16.0.47", "172.16.0.48", "172.16.0.49", "172.16.0.50", "172.16.0.51",
    "172.16.0.52", "172.16.0.53", "172.16.0.54", "172.16.0.55", "172.16.0.56", "172.16.0.57",
    "172.16.0.58", "172.16.0.59", "172.16.0.60", "172.16.0.61", "172.16.0.62", "172.16.0.63",
    "172.16.0.64", "172.16.0.65", "172.16.0.66", "172.16.0.67", "172.16.0.68", "172.16.0.69",
    "172.16.0.70", "172.16.0.71", "172.16.0.72", "172.16.0.73", "172.16.0.74", "172.16.0.75",
    "172.16.0.76", "172.16.0.77", "172.16.0.78", "172.16.0.79", "172.16.0.80", "172.16.0.81",
    "172.16.0.82", "172.16.0.83", "172.16.0.84", "172.16.0.85", "172.16.0.86", "172.16.0.87",
    "172.16.0.88", "172.16.0.89", "172.16.0.90", "172.16.0.91", "172.16.0.92", "172.16.0.93",
    "172.16.0.94", "172.16.0.95", "172.16.0.96", "172.16.0.97", "172.16.0.98", "172.16.0.99",
    "172.16.0.100", "172.16.0.101", "172.16.0.102", "172.16.0.103", "172.16.0.104", "172.16.0.105",
    "172.16.0.106", "172.16.0.107", "172.16.0.108", "172.16.0.109", "172.16.0.110", "172.16.0.111",
    "172.16.0.112", "172.16.0.113", "172.16.0.114", "172.16.0.115", "172.16.0.116", "172.16.0.117",
    "172.16.0.118", "172.16.0.119", "172.16.0.120", "172.16.0.121", "172.16.0.122", "172.16.0.123",
    "172.16.0.124", "172.16.0.125", "172.16.0.126", "172.16.0.127", "172.16.0.128", "172.16.0.129",
    "172.16.0.130", "172.16.0.131", "172.16.0.132", "172.16.0.133", "172.16.0.134", "172.16.0.135",
    "172.16.0.136", "172.16.0.137", "172.16.0.138", "172.16.0.139", "172.16.0.140", "172.16.0.141",
    "172.16.0.142", "172.16.0.143", "172.16.0.144", "172.16.0.145", "172.16.0.146", "172.16.0.147",
    "172.16.0.148", "172.16.0.149", "172.16.0.150", "172.16.0.151", "172.16.0.152", "172.16.0.153",
    "172.16.0.154", "172.16.0.155", "172.16.0.156", "172.16.0.157", "172.16.0.158", "172.16.0.159",
    "172.16.0.160", "172.16.0.161", "172.16.0.162", "172.16.0.163", "172.16.0.164", "172.16.0.165",
    "172.16.0.166", "172.16.0.167", "172.16.0.168", "172.16.0.169", "172.16.0.170", "172.16.0.171",
    "172.16.0.172", "172.16.0.173", "172.16.0.174", "172.16.0.175", "172.16.0.176", "172.16.0.177",
    "172.16.0.178", "172.16.0.179", "172.16.0.180", "172.16.0.181", "172.16.0.182", "172.16.0.183",
    "172.16.0.184", "172.16.0.185", "172.16.0.186", "172.16.0.187", "172.16.0.188", "172.16.0.189",
    "172.16.0.190", "172.16.0.191", "172.16.0.192", "172.16.0.193", "172.16.0.194", "172.16.0.195",
    "172.16.0.196", "172.16.0.197", "172.16.0.198", "172.16.0.199", "172.16.0.200", "172.16.0.201",
    "172.16.0.202", "172.16.0.203", "172.16.0.204", "172.16.0.205", "172.16.0.206", "172.16.0.207",
    "172.16.0.208", "172.16.0.209", "172.16.0.210", "172.16.0.211", "172.16.0.212", "172.16.0.213",
    "172.16.0.214", "172.16.0.215", "172.16.0.216", "172.16.0.217", "172.16.0.218", "172.16.0.219",
    "172.16.0.220", "172.16.0.221", "172.16.0.222", "172.16.0.223", "172.16.0.224", "172.16.0.225",
    "172.16.0.226", "172.16.0.227", "172.16.0.228", "172.16.0.229", "172.16.0.230", "172.16.0.231",
    "172.16.0.232", "172.16.0.233", "172.16.0.234", "172.16.0.235", "172.16.0.236", "172.16.0.237",
    "172.16.0.238", "172.16.0.239", "172.16.0.240", "172.16.0.241", "172.16.0.242", "172.16.0.243",
    "172.16.0.244", "172.16.0.245", "172.16.0.246", "172.16.0.247", "172.16.0.248", "172.16.0.249",
    "172.16.0.250", "172.16.0.251", "172.16.0.252", "172.16.0.253", "172.16.0.254"
  ]
}

variable "private_ips_b" {
  description = "A list to configure Instance private IP address"
  type        = list(string)
  default     = [
    "172.16.1.1", "172.16.1.2", "172.16.1.3",
    "172.16.1.4", "172.16.1.5", "172.16.1.6", "172.16.1.7", "172.16.1.8", "172.16.1.9",
    "172.16.1.10", "172.16.1.11", "172.16.1.12", "172.16.1.13", "172.16.1.14", "172.16.1.15",
    "172.16.1.16", "172.16.1.17", "172.16.1.18", "172.16.1.19", "172.16.1.20", "172.16.1.21",
    "172.16.1.22", "172.16.1.23", "172.16.1.24", "172.16.1.25", "172.16.1.26", "172.16.1.27",
    "172.16.1.28", "172.16.1.29", "172.16.1.30", "172.16.1.31", "172.16.1.32", "172.16.1.33",
    "172.16.1.34", "172.16.1.35", "172.16.1.36", "172.16.1.37", "172.16.1.38", "172.16.1.39",
    "172.16.1.40", "172.16.1.41", "172.16.1.42", "172.16.1.43", "172.16.1.44", "172.16.1.45",
    "172.16.1.46", "172.16.1.47", "172.16.1.48", "172.16.1.49", "172.16.1.50", "172.16.1.51",
    "172.16.1.52", "172.16.1.53", "172.16.1.54", "172.16.1.55", "172.16.1.56", "172.16.1.57",
    "172.16.1.58", "172.16.1.59", "172.16.1.60", "172.16.1.61", "172.16.1.62", "172.16.1.63",
    "172.16.1.64", "172.16.1.65", "172.16.1.66", "172.16.1.67", "172.16.1.68", "172.16.1.69",
    "172.16.1.70", "172.16.1.71", "172.16.1.72", "172.16.1.73", "172.16.1.74", "172.16.1.75",
    "172.16.1.76", "172.16.1.77", "172.16.1.78", "172.16.1.79", "172.16.1.80", "172.16.1.81",
    "172.16.1.82", "172.16.1.83", "172.16.1.84", "172.16.1.85", "172.16.1.86", "172.16.1.87",
    "172.16.1.88", "172.16.1.89", "172.16.1.90", "172.16.1.91", "172.16.1.92", "172.16.1.93",
    "172.16.1.94", "172.16.1.95", "172.16.1.96", "172.16.1.97", "172.16.1.98", "172.16.1.99",
    "172.16.1.100", "172.16.1.101", "172.16.1.102", "172.16.1.103", "172.16.1.104", "172.16.1.105",
    "172.16.1.106", "172.16.1.107", "172.16.1.108", "172.16.1.109", "172.16.1.110", "172.16.1.111",
    "172.16.1.112", "172.16.1.113", "172.16.1.114", "172.16.1.115", "172.16.1.116", "172.16.1.117",
    "172.16.1.118", "172.16.1.119", "172.16.1.120", "172.16.1.121", "172.16.1.122", "172.16.1.123",
    "172.16.1.124", "172.16.1.125", "172.16.1.126", "172.16.1.127", "172.16.1.128", "172.16.1.129",
    "172.16.1.130", "172.16.1.131", "172.16.1.132", "172.16.1.133", "172.16.1.134", "172.16.1.135",
    "172.16.1.136", "172.16.1.137", "172.16.1.138", "172.16.1.139", "172.16.1.140", "172.16.1.141",
    "172.16.1.142", "172.16.1.143", "172.16.1.144", "172.16.1.145", "172.16.1.146", "172.16.1.147",
    "172.16.1.148", "172.16.1.149", "172.16.1.150", "172.16.1.151", "172.16.1.152", "172.16.1.153",
    "172.16.1.154", "172.16.1.155", "172.16.1.156", "172.16.1.157", "172.16.1.158", "172.16.1.159",
    "172.16.1.160", "172.16.1.161", "172.16.1.162", "172.16.1.163", "172.16.1.164", "172.16.1.165",
    "172.16.1.166", "172.16.1.167", "172.16.1.168", "172.16.1.169", "172.16.1.170", "172.16.1.171",
    "172.16.1.172", "172.16.1.173", "172.16.1.174", "172.16.1.175", "172.16.1.176", "172.16.1.177",
    "172.16.1.178", "172.16.1.179", "172.16.1.180", "172.16.1.181", "172.16.1.182", "172.16.1.183",
    "172.16.1.184", "172.16.1.185", "172.16.1.186", "172.16.1.187", "172.16.1.188", "172.16.1.189",
    "172.16.1.190", "172.16.1.191", "172.16.1.192", "172.16.1.193", "172.16.1.194", "172.16.1.195",
    "172.16.1.196", "172.16.1.197", "172.16.1.198", "172.16.1.199", "172.16.1.200", "172.16.1.201",
    "172.16.1.202", "172.16.1.203", "172.16.1.204", "172.16.1.205", "172.16.1.206", "172.16.1.207",
    "172.16.1.208", "172.16.1.209", "172.16.1.210", "172.16.1.211", "172.16.1.212", "172.16.1.213",
    "172.16.1.214", "172.16.1.215", "172.16.1.216", "172.16.1.217", "172.16.1.218", "172.16.1.219",
    "172.16.1.220", "172.16.1.221", "172.16.1.222", "172.16.1.223", "172.16.1.224", "172.16.1.225",
    "172.16.1.226", "172.16.1.227", "172.16.1.228", "172.16.1.229", "172.16.1.230", "172.16.1.231",
    "172.16.1.232", "172.16.1.233", "172.16.1.234", "172.16.1.235", "172.16.1.236", "172.16.1.237",
    "172.16.1.238", "172.16.1.239", "172.16.1.240", "172.16.1.241", "172.16.1.242", "172.16.1.243",
    "172.16.1.244", "172.16.1.245", "172.16.1.246", "172.16.1.247", "172.16.1.248", "172.16.1.249",
    "172.16.1.250", "172.16.1.251", "172.16.1.252", "172.16.1.253", "172.16.1.254"
  ]
}

variable "private_ips_c" {
  description = "A list to configure Instance private IP address"
  type        = list(string)
  default     = [
    "172.16.2.1", "172.16.2.2", "172.16.2.3",
    "172.16.2.4", "172.16.2.5", "172.16.2.6", "172.16.2.7", "172.16.2.8", "172.16.2.9",
    "172.16.2.10", "172.16.2.11", "172.16.2.12", "172.16.2.13", "172.16.2.14", "172.16.2.15",
    "172.16.2.16", "172.16.2.17", "172.16.2.18", "172.16.2.19", "172.16.2.20", "172.16.2.21",
    "172.16.2.22", "172.16.2.23", "172.16.2.24", "172.16.2.25", "172.16.2.26", "172.16.2.27",
    "172.16.2.28", "172.16.2.29", "172.16.2.30", "172.16.2.31", "172.16.2.32", "172.16.2.33",
    "172.16.2.34", "172.16.2.35", "172.16.2.36", "172.16.2.37", "172.16.2.38", "172.16.2.39",
    "172.16.2.40", "172.16.2.41", "172.16.2.42", "172.16.2.43", "172.16.2.44", "172.16.2.45",
    "172.16.2.46", "172.16.2.47", "172.16.2.48", "172.16.2.49", "172.16.2.50", "172.16.2.51",
    "172.16.2.52", "172.16.2.53", "172.16.2.54", "172.16.2.55", "172.16.2.56", "172.16.2.57",
    "172.16.2.58", "172.16.2.59", "172.16.2.60", "172.16.2.61", "172.16.2.62", "172.16.2.63",
    "172.16.2.64", "172.16.2.65", "172.16.2.66", "172.16.2.67", "172.16.2.68", "172.16.2.69",
    "172.16.2.70", "172.16.2.71", "172.16.2.72", "172.16.2.73", "172.16.2.74", "172.16.2.75",
    "172.16.2.76", "172.16.2.77", "172.16.2.78", "172.16.2.79", "172.16.2.80", "172.16.2.81",
    "172.16.2.82", "172.16.2.83", "172.16.2.84", "172.16.2.85", "172.16.2.86", "172.16.2.87",
    "172.16.2.88", "172.16.2.89", "172.16.2.90", "172.16.2.91", "172.16.2.92", "172.16.2.93",
    "172.16.2.94", "172.16.2.95", "172.16.2.96", "172.16.2.97", "172.16.2.98", "172.16.2.99",
    "172.16.2.100", "172.16.2.101", "172.16.2.102", "172.16.2.103", "172.16.2.104", "172.16.2.105",
    "172.16.2.106", "172.16.2.107", "172.16.2.108", "172.16.2.109", "172.16.2.110", "172.16.2.111",
    "172.16.2.112", "172.16.2.113", "172.16.2.114", "172.16.2.115", "172.16.2.116", "172.16.2.117",
    "172.16.2.118", "172.16.2.119", "172.16.2.120", "172.16.2.121", "172.16.2.122", "172.16.2.123",
    "172.16.2.124", "172.16.2.125", "172.16.2.126", "172.16.2.127", "172.16.2.128", "172.16.2.129",
    "172.16.2.130", "172.16.2.131", "172.16.2.132", "172.16.2.133", "172.16.2.134", "172.16.2.135",
    "172.16.2.136", "172.16.2.137", "172.16.2.138", "172.16.2.139", "172.16.2.140", "172.16.2.141",
    "172.16.2.142", "172.16.2.143", "172.16.2.144", "172.16.2.145", "172.16.2.146", "172.16.2.147",
    "172.16.2.148", "172.16.2.149", "172.16.2.150", "172.16.2.151", "172.16.2.152", "172.16.2.153",
    "172.16.2.154", "172.16.2.155", "172.16.2.156", "172.16.2.157", "172.16.2.158", "172.16.2.159",
    "172.16.2.160", "172.16.2.161", "172.16.2.162", "172.16.2.163", "172.16.2.164", "172.16.2.165",
    "172.16.2.166", "172.16.2.167", "172.16.2.168", "172.16.2.169", "172.16.2.170", "172.16.2.171",
    "172.16.2.172", "172.16.2.173", "172.16.2.174", "172.16.2.175", "172.16.2.176", "172.16.2.177",
    "172.16.2.178", "172.16.2.179", "172.16.2.180", "172.16.2.181", "172.16.2.182", "172.16.2.183",
    "172.16.2.184", "172.16.2.185", "172.16.2.186", "172.16.2.187", "172.16.2.188", "172.16.2.189",
    "172.16.2.190", "172.16.2.191", "172.16.2.192", "172.16.2.193", "172.16.2.194", "172.16.2.195",
    "172.16.2.196", "172.16.2.197", "172.16.2.198", "172.16.2.199", "172.16.2.200", "172.16.2.201",
    "172.16.2.202", "172.16.2.203", "172.16.2.204", "172.16.2.205", "172.16.2.206", "172.16.2.207",
    "172.16.2.208", "172.16.2.209", "172.16.2.210", "172.16.2.211", "172.16.2.212", "172.16.2.213",
    "172.16.2.214", "172.16.2.215", "172.16.2.216", "172.16.2.217", "172.16.2.218", "172.16.2.219",
    "172.16.2.220", "172.16.2.221", "172.16.2.222", "172.16.2.223", "172.16.2.224", "172.16.2.225",
    "172.16.2.226", "172.16.2.227", "172.16.2.228", "172.16.2.229", "172.16.2.230", "172.16.2.231",
    "172.16.2.232", "172.16.2.233", "172.16.2.234", "172.16.2.235", "172.16.2.236", "172.16.2.237",
    "172.16.2.238", "172.16.2.239", "172.16.2.240", "172.16.2.241", "172.16.2.242", "172.16.2.243",
    "172.16.2.244", "172.16.2.245", "172.16.2.246", "172.16.2.247", "172.16.2.248", "172.16.2.249",
    "172.16.2.250", "172.16.2.251", "172.16.2.252", "172.16.2.253", "172.16.2.254"
  ]
}
