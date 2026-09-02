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

variable "private_subnets" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "public_subnets" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "az_count" {
  description = "Number of availability zones to spread subnets across"
  type        = number
  default     = 2
}

variable "single_nat_gateway" {
  description = "Whether to use a single shared NAT gateway instead of one per AZ"
  type        = bool
  default     = true
}

variable "one_nat_gateway_per_az" {
  description = "Whether to create one NAT gateway per AZ"
  type        = bool
  default     = false
}

variable "tags" {
  description = "Tags applied to the VPC and its resources"
  type        = map(string)
  default = {
    Project     = "atmosly-terraform-testing"
    Scenario    = "A-baseline-vpc"
    Environment = "test"
  }
}
