module "guardduty" {
  source          = "../modules/guardduty"
  enable          = var.enable
  member_accounts = var.member_accounts
  invite          = var.invite
  detector_tags   = var.detector_tags
  member_tags     = var.member_tags
}
