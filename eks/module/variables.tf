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

variable "vpc_id" {
  description = "VPC ID to deploy the EKS cluster into"
  type        = string
}

variable "subnet_ids" {
  description = "Subnet IDs for the EKS cluster and node groups"
  type        = list(string)
}

variable "tags" {
  description = "Tags applied to all resources"
  type        = map(string)
}
