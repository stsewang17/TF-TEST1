terraform {
  required_version = ">= 1.0.11"
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.32.0"
    }
  }
  backend "gcs" {
      bucket = "deployment-1-359820"
      prefix = "terraform/vm"
  }
}

resource "google_sourcerepo_repository" "my-repo" {
  name = "my/repo"
}