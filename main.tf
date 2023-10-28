provider "aws" {
  alias  = "us-east-1"
  region = "us-east-1"
}
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }
}
variable "name" { default = "main" }
variable "cidr" { default = "10.139.0.0/16" }

module "network" {
  source = ".//modules"

  name = "${var.name}"
  cidr = "${var.cidr}"
}

output "env"      { value = "${var.name}" }
output "vpc_cidr" { value = "${module.network.vpc_cidr}" }


