resource "google_compute_instance" "gce1" {
 count        = "${length(var.sub_cidr)}"
 name         = join("", ["web-", count.index + 1, "-", "machine"])
 machine_type = "e2-medium"
 zone         = "${var.disk_zone}"
 boot_disk {
    source      = element(google_compute_disk.bdisk_dev.*.self_link, count.index)
    auto_delete = false
  }
network_interface {
    subnetwork = "sub2-asia-south1"

    access_config {
       network_tier = "PREMIUM"
       nat_ip = element(google_compute_address.ip_address.*.self_link, count.index)
    }
  }
}