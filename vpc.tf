resource "google_compute_network" "vpc_network" {
  project                 = var.project_id # Replace this with your project ID in quotes
  name                    = "inf1-vpc"
  auto_create_subnetworks = false
  mtu                     = 1460
}