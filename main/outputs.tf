output "s3_state_store" {
    value = module.s3.bucket_name
}

output "cluster_name" {
    value = module.route53.subdomain_value
}

output "vpc_id" {
    value = module.cluster_vpc.vpc_id
}

output "subnet_id" {
    value = module.cluster_vpc.subnet_id
}