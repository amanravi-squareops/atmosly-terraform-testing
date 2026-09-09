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

data "terraform_remote_state" "vpc" {
  backend = "gcs"

  config = {
    bucket = "atmosly-terraform-testing-state-gcp"
    prefix = "vpc/dev"
  }
}

module "gke" {
  source = "../../../modules/gke"

  cluster_name         = var.cluster_name
  region               = var.region
  network_self_link    = data.terraform_remote_state.vpc.outputs.network_self_link
  subnetwork_self_link = data.terraform_remote_state.vpc.outputs.subnet_self_links["private"]
  release_channel      = var.release_channel
  node_count           = var.node_count
  node_machine_type    = var.node_machine_type
  node_disk_size_gb    = var.node_disk_size_gb
  labels               = var.labels
  tags                 = var.tags
}
