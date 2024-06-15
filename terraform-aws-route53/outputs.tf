output "domain_zone_id" {
  value = aws_route53_zone.example_com.zone_id
}

output "www_record_dns_name" {
  value = aws_route53_record.www.fqdn
}
