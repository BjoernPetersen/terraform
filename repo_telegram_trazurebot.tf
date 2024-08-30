module "transbot_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.2.0"
  name                = "telegram-trazurebot"
  description         = "Voice message transcription for Telegram, based on Azure Cognitive Services"
  is_public           = false
  enable_argocd_rules = true
}
