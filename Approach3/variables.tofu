variable "project_id" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
  default     = "us-central1"
}

variable "zone" {
  description = "GCP zone"
  type        = string
  default     = "us-central1-a"
}

variable "credentials_file" {
  description = "Path to GCP service account JSON key"
  type        = string
}

variable "instance_group_name" {
  description = "Name of the existing unmanaged instance group"
  type        = string
}

variable "vm_names" {
  description = "List of existing VM names to attach"
  type        = list(string)
}
