region            = "us-east-1"
cluster_name      = "my-cloudhsm-cluster"
subnet_ids        = ["subnet-12345678", "subnet-87654321"]
hsm_eni_subnet_id = "subnet-12345678"
availability_zone = "us-east-1a"
hsm_type          = "hsm1.medium"
tags = {
  Environment = "production"
  Project     = "my-cloudhsm-project"
}
