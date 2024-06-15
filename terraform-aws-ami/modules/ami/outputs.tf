output "ami_id" {
  description = "The ID of the created AMI"
  value       = aws_ami_from_instance.ami.id
}
