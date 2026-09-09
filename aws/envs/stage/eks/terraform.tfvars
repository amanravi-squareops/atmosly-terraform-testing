aws_region      = "us-east-1"
assume_role_arn = "arn:aws:iam::767398031518:role/atmosly-tf-testing-role"

cluster_name       = "atmosly-stage-eks"
cluster_version    = "1.36"
node_instance_type = "t3.micro"

tags = {
  Project     = "atmosly-terraform-testing"
  Scenario    = "eks-heavy-apply"
  Environment = "stage"
}
