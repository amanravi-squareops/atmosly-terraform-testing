variable "project_id" {
  description = "GCP project ID to deploy into"
  type        = string
}

variable "region" {
  description = "GCP region for subnets and router/NAT"
  type        = string
}

variable "name" {
  description = "Name prefix for the VPC and its resources"
  type        = string
}

variable "subnets" {
  description = "Map of subnets to create, keyed by a short name (e.g. \"private\", \"public\")"
  type = map(object({
    ip_cidr_range = string
    secondary_ip_ranges = optional(list(object({
      range_name    = string
      ip_cidr_range = string
    })), [])
  }))
}

variable "enable_nat" {
  description = "Whether to create a Cloud Router + Cloud NAT for outbound access from private subnets"
  type        = bool
}
