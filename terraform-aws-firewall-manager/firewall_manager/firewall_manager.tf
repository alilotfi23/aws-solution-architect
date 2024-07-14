module "firewall_manager" {
  source               = "../modules/firewall_manager"
  policy_name          = var.policy_name
  security_service     = var.security_service
  resource_type        = var.resource_type
  exclude_resource     = var.exclude_resource
  exclude_resource_type = var.exclude_resource_type
  tags                 = var.tags
}
