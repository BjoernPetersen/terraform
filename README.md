# Terraform

Terraform-managed GitHub infrastructure for my personal projects.

## Auth

- Export a fine-grained PAT for the organization as `GITHUB_TOKEN`
  - Read access to repo metadata
  - Read-write access to repo contents
  - Read-write access to repo administration
  - Read-write access to GitHub Actions variables and secrets
- Log in using the `gcloud` CLI tool: `gcloud auth application-default login`
