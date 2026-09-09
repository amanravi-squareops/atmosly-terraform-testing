project_id = "atmosly"
region     = "us-central1"

name = "atmosly-stage-vpc"

subnets = {
  private = {
    ip_cidr_range = "10.11.0.0/20"
    secondary_ip_ranges = [
      { range_name = "pods", ip_cidr_range = "10.21.0.0/16" },
      { range_name = "services", ip_cidr_range = "10.31.0.0/20" },
    ]
  }
  public = {
    ip_cidr_range = "10.11.16.0/20"
  }
}

enable_nat = true
