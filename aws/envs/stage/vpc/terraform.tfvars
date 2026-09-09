aws_region      = "us-east-1"
assume_role_arn = "arn:aws:iam::767398031518:role/atmosly-tf-testing-role"

name     = "atmosly-stage-vpc"
vpc_cidr = "10.1.0.0/16"

az_count        = 2
private_subnets = ["10.1.1.0/24", "10.1.2.0/24"]
public_subnets  = ["10.1.101.0/24", "10.1.102.0/24"]

enable_nat_gateway     = true
single_nat_gateway     = true
one_nat_gateway_per_az = false

tags = {
  Project     = "atmosly-terraform-testing"
  Scenario    = "A-baseline-vpc"
  Environment = "stage"
}
