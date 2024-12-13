module "transbot_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v8.0.2"
  name                = "telegram-trazurebot"
  description         = "Voice message transcription for Telegram, based on Azure Cognitive Services"
  is_public           = true
  enable_argocd_rules = true
  is_archived         = true
}
