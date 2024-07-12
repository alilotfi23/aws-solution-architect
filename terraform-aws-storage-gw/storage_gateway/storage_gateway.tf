module "storage_gateway" {
  source                      = "../modules/storage_gateway"
  gateway_name                = var.gateway_name
  gateway_timezone            = var.gateway_timezone
  gateway_type                = var.gateway_type
  activation_key              = var.activation_key
  tags                        = var.tags
  cloudwatch_log_group_arn    = var.cloudwatch_log_group_arn
  s3_bucket_arn               = var.s3_bucket_arn
  medium_changer_type         = var.medium_changer_type
  tape_drive_type             = var.tape_drive_type
  cache_disk_id               = var.cache_disk_id
  disk_ids                    = var.disk_ids
}
