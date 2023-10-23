terraform {
  required_version = "1.6.2"

  backend "gcs" {
    bucket = "bjoernpetersen-terraform-state"
    prefix = "terraform"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 5.40.0"
    }
    google = {
      version = "~> 5.3.0"
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
