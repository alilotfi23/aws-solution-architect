provider "aws" {
  region = var.region
}

module "kms_key" {
  source                  = "./modules/kms_key"
  key_alias               = var.key_alias
  description             = var.description
  deletion_window_in_days = var.deletion_window_in_days
  enable_key_rotation     = var.enable_key_rotation
  policy                  = var.policy
  tags                    = var.tags
}

output "kms_key_id" {
  value = module.kms_key.key_id
}

output "kms_key_arn" {
  value = module.kms_key.key_arn
}

output "kms_key_alias" {
  value = module.kms_key.key_alias
}
