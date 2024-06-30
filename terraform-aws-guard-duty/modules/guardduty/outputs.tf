output "guardduty_detector_id" {
  value = aws_guardduty_detector.this.id
}

output "guardduty_member_ids" {
  value = aws_guardduty_member.this.*.id
}
