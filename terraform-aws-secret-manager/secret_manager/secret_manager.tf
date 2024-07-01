module "secrets_manager" {
  source      = "../modules/secrets_manager"
  secret_name = var.secret_name
  secret_value = var.secret_value
  description = var.description
  tags        = var.tags
}
