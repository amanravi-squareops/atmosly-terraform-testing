project_id = "atmosly"
region     = "us-central1"

cluster_name    = "atmosly-stage-gke"
release_channel = "REGULAR"

node_count        = 1
node_machine_type = "e2-small"
node_disk_size_gb = 50

labels = {
  project     = "atmosly-terraform-testing"
  environment = "stage"
}

tags = []
