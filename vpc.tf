resource "google_compute_network" "vpc_network" {
  project                 = var.project_id # Replace this with your project ID in quotes
  name                    = "${var.vpc_name}"
  auto_create_subnetworks = false
  mtu                     = 1460
  routing_mode            = "REGIONAL"
}
  resource "google_compute_subnetwork" "subnet1" {
  count          = "${length(var.sub_cidr)}"
  name           = join("", ["sub", count.index + 1, "-", "${var.sub_region[count.index]}"])
  ip_cidr_range  = "${var.sub_cidr[count.index]}"
  region         = "${var.sub_region[count.index]}"
  network        = google_compute_network.vpc_network.id

  }
  
