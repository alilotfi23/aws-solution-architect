region          = "us-east-1"
directory_name  = "corp.example.com"
password        = "SuperSecretPassw0rd!"
size            = "Small"
vpc_settings = {
  vpc_id     = "vpc-12345678"
  subnet_ids = ["subnet-12345678", "subnet-87654321"]
}
edition         = "Standard"
connect_settings = null
tags = {
  Environment = "production"
  Project     = "my-directory-service-project"
}
