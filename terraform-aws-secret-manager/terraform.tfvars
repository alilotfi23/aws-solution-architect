region      = "us-east-1"
secret_name = "my-secret"
secret_value = "{\"username\":\"admin\",\"password\":\"supersecret\"}"
description = "This is a secret for my application"
tags = {
  Environment = "production"
  Project     = "my-secrets-manager-project"
}
