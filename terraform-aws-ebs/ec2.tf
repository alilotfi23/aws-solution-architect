resource "aws_instance" "example" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type = "t2.micro"
  subnet_id     = var.subnet_id
  security_groups = [var.security_group]

  tags = {
    Name = "example-instance"
  }
}

output "instance_id" {
  value = aws_instance.example.id
}

output "availability_zone" {
  value = aws_instance.example.availability_zone
}

output "public_ip" {
  value = aws_instance.example.public_ip
}
