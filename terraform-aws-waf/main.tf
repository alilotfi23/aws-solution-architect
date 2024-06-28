provider "aws" {
  region = var.region
}

module "waf" {
  source           = "./modules/waf"
  waf_name         = var.waf_name
  waf_scope        = var.waf_scope
  rules            = var.rules
  default_action   = var.default_action
  resource_arn     = var.resource_arn
  tags             = var.tags
}

output "waf_arn" {
  value = module.waf.waf_arn
}

output "waf_id" {
  value = module.waf.waf_id
}
