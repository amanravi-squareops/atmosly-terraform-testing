output "cluster_name" {
  value = module.gke.cluster_name
}

output "cluster_endpoint" {
  value = module.gke.cluster_endpoint
}

output "cluster_ca_certificate" {
  value     = module.gke.cluster_ca_certificate
  sensitive = true
}

output "network_self_link" {
  value = data.terraform_remote_state.vpc.outputs.network_self_link
}

output "node_pool_name" {
  value = module.gke.node_pool_name
}
