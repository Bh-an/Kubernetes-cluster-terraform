output "s3_state_store" {
    value = module.s3.bucket_name
}

output "cluster_name" {
    value = module.route53.subdomain_value
}

output "vpc_id" {
    value = module.cluster_vpc.vpc_id
}

# output "public_subnet_ids" {
#     value = module.cluster_vpc.public_subnets_id
# }
# output "private_subnet_ids" {
#     value = module.cluster_vpc.private_subnets_id
# }

output "kops_command" {
    value = "./create_cluster.sh -n ${module.route53.subdomain_value} -e ~/CSYE7125/id_rsa.pub -v ${module.cluster_vpc.vpc_id} -s ${module.cluster_vpc.public_subnets_id0},${module.cluster_vpc.public_subnets_id1},${module.cluster_vpc.public_subnets_id2} -p ${module.cluster_vpc.private_subnets_id0},${module.cluster_vpc.private_subnets_id1},${module.cluster_vpc.private_subnets_id2}"
}
