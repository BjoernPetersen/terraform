terraform {
  required_version = "1.9.5"

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
      version = "~> 6.0.0"
    }
  }
}

locals {
  gh_app_id = "Iv23liJetiEvpfGLLen0"
}

provider "github" {
  owner = "bjoernpetersen"
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
