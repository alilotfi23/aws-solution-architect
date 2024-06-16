// Example main.tf in root directory

// Define a VPC
resource "aws_vpc" "example_vpc" {
  cidr_block = "10.0.0.0/16"
}

// Example EC2 instance
resource "aws_instance" "example_instance" {
  ami           = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.example_subnet.id
}

// Include submodule configurations
module "sqs_module" {
  source = "./sqs"
}

module "iam_module" {
  source = "./iam"
}
