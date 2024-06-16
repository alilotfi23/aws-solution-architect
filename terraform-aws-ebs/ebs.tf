resource "aws_ebs_volume" "example" {
  availability_zone = var.availability_zone
  size              = 10

  tags = {
    Name = "example-ebs-volume"
  }
}

resource "aws_volume_attachment" "example" {
  device_name = "/dev/sdh"
  volume_id   = aws_ebs_volume.example.id
  instance_id = var.instance_id
}

output "volume_id" {
  value = aws_ebs_volume.example.id
}
