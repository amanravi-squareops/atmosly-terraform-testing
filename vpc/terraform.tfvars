aws_region = "us-east-1"

name     = "atmosly-tf-testing"
vpc_cidr = "10.0.0.0/16"

az_count        = 2
private_subnets = ["10.0.1.0/24", "10.0.2.0/24"]
public_subnets  = ["10.0.101.0/24", "10.0.102.0/24"]

enable_nat_gateway     = true
single_nat_gateway     = true
one_nat_gateway_per_az = false

state_bucket_name = "atmosly-terraform-testing-state"

tags = {
  Project     = "atmosly-terraform-testing"
  Scenario    = "A-baseline-vpc"
  Environment = "test"
}
