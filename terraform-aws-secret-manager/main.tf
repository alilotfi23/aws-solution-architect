provider "aws" {
  region = var.region
}

module "secrets_manager" {
  source      = "./modules/secrets_manager"
  secret_name = var.secret_name
  secret_value = var.secret_value
  description = var.description
  tags        = var.tags
}

output "secret_arn" {
  value = module.secrets_manager.secret_arn
}

output "secret_name" {
  value = module.secrets_manager.secret_name
}
