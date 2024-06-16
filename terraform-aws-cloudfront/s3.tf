module "s3" {
  source = "terraform-aws-modules/s3-bucket/aws"
  version = "~> 3.0"

  bucket = var.bucket_name

  acl    = "private"

  tags = {
    Name        = "s3-bucket-for-cloudfront"
    Environment = "production"
  }
}
