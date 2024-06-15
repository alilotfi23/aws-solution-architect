# terraform/modules/asg/main.tf
resource "aws_launch_configuration" "asg_lc" {
  name          = "asg-lc"
  image_id      = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "asg" {
  desired_capacity     = var.desired_capacity
  max_size             = var.max_size
  min_size             = var.min_size
  vpc_zone_identifier  = var.subnet_ids
  launch_configuration = aws_launch_configuration.asg_lc.id

  tag {
    key                 = "Name"
    value               = "ASG-Instance"
    propagate_at_launch = true
  }
}
