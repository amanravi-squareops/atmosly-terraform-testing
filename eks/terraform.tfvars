aws_region = "us-east-1"

cluster_name        = "atmosly-tf-testing-eks"
cluster_version     = "1.36"
node_instance_type  = "t3.micro"

tags = {
  Project     = "atmosly-terraform-testing"
  Scenario    = "eks-heavy-apply"
  Environment = "test"
}
