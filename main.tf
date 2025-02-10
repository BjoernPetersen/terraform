terraform {
  required_version = "1.10.5"

  backend "gcs" {
    bucket = "bjoernpetersen-terraform-state"
    prefix = "terraform"
  }

  required_providers {
    github = {
      source  = "integrations/github"
      version = "~> 6.5.0"
    }
    google = {
      source  = "hashicorp/google"
      version = "~> 6.20.0"
    }
  }
}

locals {
  gh_app_id = "Iv23liJetiEvpfGLLen0"
}

provider "github" {
  owner = "BjoernPetersen"
  app_auth {
    id              = local.gh_app_id
    pem_file        = null
    installation_id = "54328403"
  }
}

provider "google" {
  project = "personal-bjoernpetersen"
  region  = "europe-west3"
}

resource "google_project_service" "services" {
  for_each = toset([
    "cloudresourcemanager.googleapis.com",
    "iam.googleapis.com",
    "storage-api.googleapis.com",
    "storage-component.googleapis.com",
    "storage.googleapis.com",
  ])
  service = each.key
}
