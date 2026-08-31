output "vpc_id" {
  value = module.vpc.vpc_id
}

output "private_subnets" {
  value = module.vpc.private_subnets
}

output "public_subnets" {
  value = module.vpc.public_subnets
}

output "nat_public_ips" {
  value = module.vpc.nat_public_ips
}

output "state_bucket_name" {
  value = aws_s3_bucket.state.id
}
