terraform {
  required_version = ">= 1.10"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

provider "aws" {
  region = var.aws_region

  # assume_role {
  #   role_arn = var.assume_role_arn
  # }
}

module "vpc" {
  source = "../../../modules/vpc"

  name                   = var.name
  vpc_cidr               = var.vpc_cidr
  az_count               = var.az_count
  private_subnets        = var.private_subnets
  public_subnets         = var.public_subnets
  enable_nat_gateway     = var.enable_nat_gateway
  single_nat_gateway     = var.single_nat_gateway
  one_nat_gateway_per_az = var.one_nat_gateway_per_az
  tags                   = var.tags
}
