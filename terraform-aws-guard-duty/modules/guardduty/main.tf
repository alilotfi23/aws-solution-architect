resource "aws_guardduty_detector" "this" {
  enable = var.enable

  tags = var.detector_tags
}

resource "aws_guardduty_member" "this" {
  count             = var.invite ? length(var.member_accounts) : 0
  account_id        = element(var.member_accounts, count.index)
  detector_id       = aws_guardduty_detector.this.id
  email             = "${element(var.member_accounts, count.index)}@example.com"
  invite            = var.invite
  invitation_message = "You are invited to join GuardDuty"

  tags = var.member_tags
}

output "guardduty_detector_id" {
  value = aws_guardduty_detector.this.id
}

output "guardduty_member_ids" {
  value = [for member in aws_guardduty_member.this : member.id]
}
