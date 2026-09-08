variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
}

variable "name" {
  description = "Name prefix for the VPC and its resources"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
}

variable "enable_nat_gateway" {
  description = "Whether to create a NAT gateway (set false for zero-cost public-subnet-only scenarios)"
  type        = bool
}

variable "private_subnets" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
}

variable "public_subnets" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
}

variable "az_count" {
  description = "Number of availability zones to spread subnets across"
  type        = number
}

variable "single_nat_gateway" {
  description = "Whether to use a single shared NAT gateway instead of one per AZ"
  type        = bool
}

variable "one_nat_gateway_per_az" {
  description = "Whether to create one NAT gateway per AZ"
  type        = bool
}

variable "tags" {
  description = "Tags applied to the VPC and its resources"
  type        = map(string)
}
