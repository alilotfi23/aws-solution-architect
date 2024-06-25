region                  = "us-east-1"
key_alias               = "my-key-alias"
description             = "My KMS key for encrypting application data"
deletion_window_in_days = 30
enable_key_rotation     = true
policy                  = <<POLICY
{
  "Version": "2012-10-17",
  "Id": "key-default-1",
  "Statement": [
    {
      "Sid": "Enable IAM User Permissions",
      "Effect": "Allow",
      "Principal": {
        "AWS": "arn:aws:iam::ACCOUNT_ID:root"
      },
      "Action": "kms:*",
      "Resource": "*"
    }
  ]
}
POLICY

tags = {
  Environment = "production"
  Project     = "my-kms-project"
}
