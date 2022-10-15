resource "aws_route53_zone" "kops_subdomain" {
    name = var.subdomain_value
    tags = {
        Name = "kops_subdomain"
    }
}

data "aws_route53_zone" "main_domain" {
    name = var.main_domain_value
    #private_zone = true
}

resource "aws_route53_record" "kops_subdomain_ns" {
    zone_id = data.aws_route53_zone.main_domain.id
    name = aws_route53_zone.kops_subdomain.name
    type = "NS"
    ttl = 60
    records = [ 
        aws_route53_zone.kops_subdomain.name_servers[0],
        aws_route53_zone.kops_subdomain.name_servers[1],
        aws_route53_zone.kops_subdomain.name_servers[2],
        aws_route53_zone.kops_subdomain.name_servers[3],
    ]
}