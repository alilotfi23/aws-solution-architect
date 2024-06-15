variable "elb_name" {
  description = "Name of the Elastic Load Balancer"
  type        = string
  default     = "my-elb"
}

variable "subnet_ids" {
  description = "List of subnet IDs to place the ELB in"
  type        = list(string)
  default     = ["subnet-12345678", "subnet-87654321"]  // Replace with your subnet IDs
}
