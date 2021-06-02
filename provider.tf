provider "google" {
  project = var.project_id
  region  = var.region1
}

provider "google-beta" {
  project = var.project_id
  region  = var.region1
}

terraform {
  required_version = ">=0.12.6"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "3.66.1"
    }
    google-beta = {
      source  = "hashicorp/google-beta"
      version = "3.66.1"
    }
  }
}