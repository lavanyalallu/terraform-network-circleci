module "network" {
  source = "../../modules/network"
  cidr = "${var.cidr}"
  env  = "${var.env}"
}
