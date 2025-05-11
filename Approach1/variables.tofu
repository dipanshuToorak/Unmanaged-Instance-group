variable "credentials_file" {
  description = "Path to the GCP service account JSON file"
  type        = string
}

variable "project_id" {
  description = "GCP Project ID"
  type        = string
}

variable "region" {
  description = "GCP Region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP Zone"
  type        = string
  default     = "us-central1-a"
}
# Additional vars needed (define in terraform.tfvars):
# - instance_count
# - group_name
# - instance_name_prefix
# - machine_type
# - image