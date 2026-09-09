terraform {
  required_version = ">= 1.10"

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

module "vpc" {
  source = "../../../modules/vpc"

  name       = var.name
  region     = var.region
  subnets    = var.subnets
  enable_nat = var.enable_nat
}
