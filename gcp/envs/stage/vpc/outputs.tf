output "network_id" {
  value = module.vpc.network_id
}

output "network_name" {
  value = module.vpc.network_name
}

output "network_self_link" {
  value = module.vpc.network_self_link
}

output "subnet_self_links" {
  value = module.vpc.subnet_self_links
}

output "subnet_names" {
  value = module.vpc.subnet_names
}
