provider "aws" {
  region = var.region
}

module "shield" {
  source                  = "./modules/shield"
  protection_name         = var.protection_name
  resource_arn            = var.resource_arn
  tags                    = var.tags
}

output "shield_protection_id" {
  value = module.shield.shield_protection_id
}
