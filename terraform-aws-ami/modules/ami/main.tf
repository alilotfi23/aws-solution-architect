resource "aws_instance" "ami_instance" {
  ami           = "ami-0c55b159cbfafe1f0" # This should be the base AMI ID you want to use
  instance_type = var.instance_type
}

resource "aws_ami_from_instance" "ami" {
  name               = var.ami_name
  source_instance_id = aws_instance.ami_instance.id
  depends_on         = [aws_instance.ami_instance]
}

output "ami_id" {
  value = aws_ami_from_instance.ami.id
}
