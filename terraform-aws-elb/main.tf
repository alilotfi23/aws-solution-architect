resource "aws_elb" "my-elb" {
  name               = var.elb_name
  availability_zones = ["us-east-1a", "us-east-1b"]  // Replace with your desired AZs
  subnets            = var.subnet_ids

  listener {
    instance_port     = 80
    instance_protocol = "HTTP"
    lb_port           = 80
    lb_protocol       = "HTTP"
  }

  health_check {
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 3
    target              = "HTTP:80/"
    interval            = 30
  }

  tags = {
    Name = var.elb_name
  }
}
