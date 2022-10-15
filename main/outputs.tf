output "vpc_id" {
    value = module.cluster_vpc.vpc_id
}

output "public_subnet_ids" {
    value = module.cluster_vpc.public_subnets_id
}
output "private_subnet_ids" {
    value = module.cluster_vpc.private_subnets_id
}