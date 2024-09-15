module "transbot_repo" {
  source              = "github.com/BlindfoldedSurgery/terraform-repo-module?ref=v7.3.2"
  name                = "telegram-trazurebot"
  description         = "Voice message transcription for Telegram, based on Azure Cognitive Services"
  is_public           = true
  enable_argocd_rules = true
}
