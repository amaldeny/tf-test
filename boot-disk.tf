resource "google_compute_disk" "bdisk_dev" {
count    = "${length(var.sub_cidr)}"
name     = join("", ["web-dev-", count.index + 1, "-bdisk" ])
type     = "${var.disk_type}"
zone     = "${var.disk_zone}"
size     = 20
image    = "ubuntu-2104"
labels   = {
    environment = "dev"
  }

}