module "shield" {
  source                  = "../modules/shield"
  protection_name         = var.protection_name
  resource_arn            = var.resource_arn
  tags                    = var.tags
}
