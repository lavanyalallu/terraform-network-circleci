terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.12.1"
    }
  }
}

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1" # define region as per your account
}

#backend state
terraform {
  backend "s3" {
    bucket         = "lavanya-terraform-statefile-dontdelete" # Use the same bucket name as defined in main.tf
    key            = "prod/terraform.tfstate"
    region         = "us-east-1" # Set your AWS region
  }
}