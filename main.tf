terraform {
  required_version = "1.8.1"

  backend "gcs" {
    bucket = "bjoernpetersen-terraform-state"
    prefix = "terraform"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.2.0"
    }
    google = {
      version = "~> 5.25.0"
    }
  }
}

provider "github" {
  owner = "bjoernpetersen"
}

provider "google" {
  project = "personal-bjoernpetersen"
  region  = "europe-west3"
}
