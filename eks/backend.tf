terraform {
  backend "s3" {
    bucket       = "atmosly-terraform-testing-state"
    key          = "eks/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true
  }
}
