module "inspector" {
  source                   = "../modules/inspector"
  target_name              = var.target_name
  target_resource_group_arn = var.target_resource_group_arn
  template_name            = var.template_name
  duration_seconds         = var.duration_seconds
  rules_package_arns       = var.rules_package_arns
  user_attributes_for_findings = var.user_attributes_for_findings
  tags                     = var.tags
}
