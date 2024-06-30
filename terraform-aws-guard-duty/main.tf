provider "aws" {
  region = var.region
}

module "guardduty" {
  source              = "./modules/guardduty"
  enable              = var.enable
  member_accounts     = var.member_accounts
  invite              = var.invite
  detector_tags       = var.detector_tags
  member_tags         = var.member_tags
}

output "guardduty_detector_id" {
  value = module.guardduty.guardduty_detector_id
}

output "guardduty_member_ids" {
  value = module.guardduty.guardduty_member_ids
}
