variable "aws_region" {
  description = "AWS region to deploy into"
  type        = string
  default     = "us-east-1"
}

variable "cluster_name" {
  description = "Name of the EKS cluster"
  type        = string
}

variable "cluster_version" {
  description = "Kubernetes version for the EKS cluster"
  type        = string
}

variable "node_instance_type" {
  description = "Instance type for the EKS managed node group"
  type        = string
}

variable "tags" {
  description = "Tags applied to all resources"
  type        = map(string)
}
