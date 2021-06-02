resource "google_compute_network" "vpc_network" {
  project                 = var.project_id # Replace this with your project ID in quotes
  name                    = "${var.vpc_name}"
  auto_create_subnetworks = false
  mtu                     = 1460
  routing_mode            = "REGIONAL"

  subnets = [
  {
  subnet_name   = "${local.subnet_01}"
  subnet_ip     = "10.10.10.0/24"
  subnet_region = "asia-south1"

  },
  {
  subnet_name   = "${local.subnet_02}"
  subnet_ip     = "10.10.20.0/24"
  subnet_region = "asia-southeast1"

  }
  ]
}