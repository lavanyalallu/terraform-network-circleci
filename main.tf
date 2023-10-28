variable "name" { default = "demo-dev" }
variable "cidr" { default = "10.139.0.0/16" }

module "network" {
  source = "https://github.com/lavanyalallu/terraform-network-circleci/blob/main/modules"

  name = "${var.name}"
  cidr = "${var.cidr}"
}

output "env"      { value = "${var.name}" }
output "vpc_cidr" { value = "${module.network.vpc_cidr}" }
