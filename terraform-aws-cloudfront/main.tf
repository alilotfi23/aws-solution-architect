terraform {
  required_version = ">= 1.0.0"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "s3_bucket" {
  source = "./s3"
}

module "cloudfront_distribution" {
  source       = "./cloudfront"
  s3_bucket_id = module.s3_bucket.bucket_id
  s3_bucket_arn = module.s3_bucket.bucket_arn
}

module "iam" {
  source = "./iam"
  s3_bucket_arn = module.s3_bucket.bucket_arn
}
