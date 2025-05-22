terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0" # Or the version compatible with your setup
    }
  }
}

provider "google" {
  project     = var.project_id
  region      = var.region
}
