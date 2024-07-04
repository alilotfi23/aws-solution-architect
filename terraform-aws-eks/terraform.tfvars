region              = "us-east-1"
cluster_name        = "my-eks-cluster"
cluster_version     = "1.20"
vpc_id              = "vpc-12345678"
subnet_ids          = ["subnet-12345678", "subnet-87654321"]
node_group_name     = "my-eks-nodes"
node_instance_type  = "t3.medium"
desired_capacity    = 2
min_size            = 1
max_size            = 3
key_name            = "my-ssh-key"
tags = {
  Environment = "production"
  Project     = "my-eks-project"
}
