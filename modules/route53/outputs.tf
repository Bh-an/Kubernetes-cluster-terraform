output "subdomain_value" {
    value = aws_route53_zone.kops_subdomain.zone_id
}