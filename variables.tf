variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "name" {
  description = "Name prefix for the VPC and its resources"
  type        = string
  default     = "atmosly-test-vpc"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "enable_nat_gateway" {
  description = "Whether to create a NAT gateway (set false for zero-cost public-subnet-only scenarios)"
  type        = bool
  default     = true
}

variable "state_bucket_name" {
  description = "Name of the S3 bucket used for Terraform state storage"
  type        = string
  default     = "atmosly-terraform-testing-state"
}
