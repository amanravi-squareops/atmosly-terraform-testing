variable "cluster_name" {
  description = "Name of the GKE cluster"
  type        = string
}

variable "region" {
  description = "GCP region (or zone) to deploy the cluster into"
  type        = string
}

variable "network_self_link" {
  description = "Self-link of the VPC network to attach the cluster to"
  type        = string
}

variable "subnetwork_self_link" {
  description = "Self-link of the subnetwork to attach the cluster to"
  type        = string
}

variable "release_channel" {
  description = "GKE release channel (RAPID, REGULAR, STABLE)"
  type        = string
}

variable "node_count" {
  description = "Number of nodes in the default node pool"
  type        = number
}

variable "node_machine_type" {
  description = "Machine type for the default node pool"
  type        = string
}

variable "node_disk_size_gb" {
  description = "Boot disk size (GB) for node pool VMs"
  type        = number
}

variable "labels" {
  description = "Labels applied to node pool VMs"
  type        = map(string)
}

variable "tags" {
  description = "Network tags applied to node pool VMs"
  type        = list(string)
}
