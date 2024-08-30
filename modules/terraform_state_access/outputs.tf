output "private_key" {
  value     = base64decode(google_service_account_key.main.private_key)
  sensitive = true
}
