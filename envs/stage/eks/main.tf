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

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "atmosly-terraform-testing-state"
    key    = "vpc/stage/terraform.tfstate"
    region = "us-east-1"
  }
}

module "eks" {
  source = "../../../modules/eks"

  cluster_name       = var.cluster_name
  cluster_version    = var.cluster_version
  node_instance_type = var.node_instance_type
  vpc_id             = data.terraform_remote_state.vpc.outputs.vpc_id
  subnet_ids         = data.terraform_remote_state.vpc.outputs.private_subnets
  tags               = var.tags
}
