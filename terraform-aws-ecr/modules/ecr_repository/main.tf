resource "aws_ecr_repository" "this" {
  name = var.repository_name

  image_tag_mutability = "IMMUTABLE"

  lifecycle {
    policy = jsonencode({
      rules = [{
        rulePriority = 1
        description  = "Keep only 5 most recent images"
        selection    = {
          countType = "imageCountMoreThan"
          countNumber = 5
        }
        action = {
          type = "expire"
        }
      }]
    })
  }
}

output "ecr_repository_url" {
  value = aws_ecr_repository.this.repository_url
}
