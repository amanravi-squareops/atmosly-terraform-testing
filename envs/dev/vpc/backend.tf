terraform {
  backend "s3" {
    bucket       = "atmosly-terraform-testing-state"
    key          = "vpc/dev/terraform.tfstate"
    region       = "us-east-1"
    encrypt      = true
    use_lockfile = true

    assume_role = {
      role_arn = "arn:aws:iam::767398031518:role/atmosly-tf-testing-role"
    }
  }
}
