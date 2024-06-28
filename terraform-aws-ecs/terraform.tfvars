region              = "us-east-1"
cluster_name        = "my-ecs-cluster"
task_definition_name = "my-task"
container_name      = "my-container"
container_image     = "nginx"
container_port      = 80
desired_count       = 2
vpc_id              = "vpc-12345678"
subnet_ids          = ["subnet-12345678", "subnet-87654321"]
security_group_ids  = ["sg-12345678"]
tags = {
  Environment = "production"
  Project     = "my-ecs-project"
}
