module "kms_key" {
  source                  = "../modules/kms_key"
  key_alias               = var.key_alias
  description             = var.description
  deletion_window_in_days = var.deletion_window_in_days
  enable_key_rotation     = var.enable_key_rotation
  policy                  = var.policy
  tags                    = var.tags
}
