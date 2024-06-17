region               = "us-east-1"
broker_name          = "my-mq-broker"
broker_instance_type = "mq.t3.micro"
engine_type          = "ActiveMQ"
engine_version       = "5.15.14"
deployment_mode      = "SINGLE_INSTANCE"
subnet_ids           = ["subnet-0123456789abcdef0", "subnet-0987654321abcdef0"]
security_group_ids   = ["sg-0123456789abcdef0"]
