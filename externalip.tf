resource "google_compute_address" "ip_address" {
count          = "${length(var.sub_cidr)}"
name           = join("", ["address-dev-", count.index + 1, "-external" ])
address_type   = "EXTERNAL"
region         = var.region1
}