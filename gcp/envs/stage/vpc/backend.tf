terraform {
  backend "gcs" {
    bucket = "atmosly-terraform-testing-state-gcp"
    prefix = "vpc/stage"
  }
}
