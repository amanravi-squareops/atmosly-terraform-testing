project_id = "your-gcp-project-id"
region     = "us-central1"

name = "atmosly-dev-vpc"

subnets = {
  private = {
    ip_cidr_range = "10.10.0.0/20"
    secondary_ip_ranges = [
      { range_name = "pods", ip_cidr_range = "10.20.0.0/16" },
      { range_name = "services", ip_cidr_range = "10.30.0.0/20" },
    ]
  }
  public = {
    ip_cidr_range = "10.10.16.0/20"
  }
}

enable_nat = true
