variable "project_id" {
  description = "GCP project ID to create the state bucket in"
  type        = string
}

variable "region" {
  description = "GCP region for the provider"
  type        = string
}

variable "bucket_name" {
  description = "Globally-unique name for the GCS bucket used as the Terraform state backend"
  type        = string
}

variable "bucket_location" {
  description = "Location for the GCS bucket (e.g. \"US\", \"us-central1\")"
  type        = string
}
