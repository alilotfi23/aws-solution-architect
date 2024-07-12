region                   = "us-east-1"
gateway_name             = "my-storage-gateway"
gateway_timezone         = "GMT"
gateway_type             = "FILE_S3" # Options: FILE_S3, VTL, STORED, CACHED
activation_key           = "your-activation-key"
cloudwatch_log_group_arn = "arn:aws:logs:us-east-1:123456789012:log-group:/aws/storagegateway/my-log-group"
s3_bucket_arn            = "arn:aws:s3:::my-storage-gateway-bucket"
tags = {
  Environment = "production"
  Project     = "my-storage-gateway-project"
}

# Optional variables for VTL and cached volume gateways
medium_changer_type = "AWS-Gateway-VTL"
tape_drive_type     = "IBM-ULT3580-TD5"
cache_disk_id       = "disk-12345678"
disk_ids            = ["disk-12345678", "disk-23456789"]
