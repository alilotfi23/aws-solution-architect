module "waf" {
  source           = "../modules/waf"
  waf_name         = var.waf_name
  waf_scope        = var.waf_scope
  rules            = var.rules
  default_action   = var.default_action
  resource_arn     = var.resource_arn
  tags             = var.tags
}
