terraform {
  backend "gcs" {
    bucket = "atmosly-terraform-testing-state-gcp"
    prefix = "gke/dev"
  }
}
