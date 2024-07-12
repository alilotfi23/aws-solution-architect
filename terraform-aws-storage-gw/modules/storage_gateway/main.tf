resource "aws_storagegateway_gateway" "this" {
  gateway_name     = var.gateway_name
  gateway_timezone = var.gateway_timezone
  gateway_type     = var.gateway_type
  activation_key   = var.activation_key
  tags             = var.tags

  cloudwatch_log_group_arn = var.cloudwatch_log_group_arn
  s3_bucket_arn            = var.s3_bucket_arn

  if var.gateway_type == "VTL" {
    medium_changer_type = var.medium_changer_type
    tape_drive_type     = var.tape_drive_type
  }

  if var.gateway_type == "CACHED" {
    cache_disk_id = var.cache_disk_id
  }

  if var.gateway_type == "STORED" || var.gateway_type == "CACHED" {
    disk_ids = var.disk_ids
  }
}

output "storage_gateway_arn" {
  value = aws_storagegateway_gateway.this.arn
}

output "storage_gateway_id" {
  value = aws_storagegateway_gateway.this.id
}
