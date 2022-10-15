provider "aws" {
    region = "us-east-1"
}

module "cluster_vpc" {
    source = "../modules/networking"

    vpc_cidr_block = var.cluster_vpc_cidr_block
    vpc_tag = var.cluster_vpc_tag

    subnets_block = var.cluster_subnets_block
    azs = var.azs
    
    subnet_block_tag = var.cluster_subnet_block_tag
    internet_gateway_tag = var.cluster_internet_gateway_tag
    routetable_tag = var.cluster_routetable_tag
}

module "aws_vpc" {
    source = "../modules/networking"

    vpc_cidr_block = var.aws_vpc_cidr_block
    vpc_tag = var.aws_vpc_tag

    subnets_block = var.aws_subnets_block
    azs = var.azs

    subnet_block_tag = var.aws_subnet_block_tag
    internet_gateway_tag = var.aws_internet_gateway_tag
    routetable_tag = var.aws_routetable_tag
}

# module "rds" {
#     depends_on = [
#         module.aws_vpc
#     ]

#     source = "../modules/rds"

#     rds_allocated_storage = var.rds_allocated_storage
#     rds_engine = var.rds_engine
#     rds_instance_class = var.rds_instance_class
#     rds_name = var.rds_name
#     rds_username = var.rds_username
#     rds_password = var.rds_password
#     rds_tag = var.rds_tag
#     subnet_block_tag = var.aws_subnet_block_tag
#     subnet_id = module.aws_vpc.subnet_id
# }

module "vpc_peering" {
    source = "../modules/vpc_peering"

    requestor_vpc_id = module.cluster_vpc.vpc_id
    acceptor_vpc_id = module.aws_vpc.vpc_id

    requestor_route_table_id = module.cluster_vpc.route_table_id
    requestor_cidr_block = var.cluster_vpc_cidr_block

    acceptor_route_table_id = module.aws_vpc.route_table_id
    acceptor_cidr_block = var.aws_vpc_cidr_block
}

# resource "null_resource" "kops_script" {
#     provisioner "local-exec" {
#         working_dir = "${path.module}/../"
#         command = "/bin/bash create_cluster.sh -n kops.rajmehta.live -v $vpc_id "
#         environment = {
#             vpc_id = module.cluster_vpc.vpc_id
#         }
#     }
# }

# module "kops" {
#     source = "../modules/kops"
# }

