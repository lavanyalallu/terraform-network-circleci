variable "name" { default = "main" }
variable "cidr" { default = "10.139.0.0/16" }

module "network" {
  source = "https://github.com/lavanyalallu/terraform-network-circleci/blob/main/modules/network.tf"

  name = "${var.name}"
  cidr = "${var.cidr}"
}

output "env"      { value = "${var.name}" }
output "vpc_cidr" { value = "${module.network.vpc_cidr}" }
