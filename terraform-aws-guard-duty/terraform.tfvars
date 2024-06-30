region           = "us-east-1"
enable           = true
member_accounts  = ["123456789012", "987654321098"]
invite           = true
detector_tags    = {
  Environment = "production"
  Project     = "my-guardduty-project"
}
member_tags = {
  Department = "Security"
}
