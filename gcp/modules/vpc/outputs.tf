output "network_id" {
  value = google_compute_network.this.id
}

output "network_name" {
  value = google_compute_network.this.name
}

output "network_self_link" {
  value = google_compute_network.this.self_link
}

output "subnet_self_links" {
  description = "Map of subnet key to self_link"
  value       = { for k, v in google_compute_subnetwork.subnets : k => v.self_link }
}

output "subnet_names" {
  description = "Map of subnet key to name"
  value       = { for k, v in google_compute_subnetwork.subnets : k => v.name }
}
