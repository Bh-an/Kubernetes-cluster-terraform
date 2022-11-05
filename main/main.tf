provider "aws" {
    region = "us-east-1"
}


locals {
  production_availability_zones = ["${var.region}a", "${var.region}b", "${var.region}c"]
}

module "iam" {
    source = "../modules/iam"
}

module "route53" {
    source = "../modules/route53"
    subdomain_value = var.subdomain_value
    main_domain_value = var.main_domain_value
}

module "s3" {
    source = "../modules/s3"
    s3_bucket_name = var.s3_bucket_name
}

output "credentials" {
    value = {
        "key"      = module.iam.kopskey
        "secret"   = module.iam.kopssecret
        }
    sensitive = true
}

module "cluster_vpc" {
    source = "../modules/cluster_networking"

    region             = var.region
  environment          = var.environment
  vpc_cidr             = var.cluster_vpc_cidr_block
  public_subnets_cidr  = var.cluster_public_subnets_block
  private_subnets_cidr = var.cluster_private_subnets_block
  availability_zones   = local.production_availability_zones
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
    cluster_sec_group = module.cluster_vpc.security_groups_ids
}

module "rds" {
    depends_on = [
        module.aws_vpc
    ]

    source = "../modules/rds"

    rds_allocated_storage = var.rds_allocated_storage
    rds_engine = var.rds_engine
    rds_instance_class = var.rds_instance_class
    rds_name = var.rds_name
    rds_username = var.rds_username
    rds_password = var.rds_password
    rds_tag = var.rds_tag
    subnet_block_tag = var.aws_subnet_block_tag
    subnet_id = module.aws_vpc.subnet_id
    rds_security_group = module.aws_vpc.security_group_id
}

module "vpc_peering" {
    source = "../modules/vpc_peering"

    requestor_vpc_id = module.cluster_vpc.vpc_id
    acceptor_vpc_id = module.aws_vpc.vpc_id

    requestor_route_table_id = module.cluster_vpc.public_route_table
    requestor_cidr_block = var.cluster_vpc_cidr_block

    acceptor_route_table_id = module.aws_vpc.route_table_id
    acceptor_cidr_block = var.aws_vpc_cidr_block
}

# resource "aws_security_group_rule" "attach_sec" {
#     type = "ingress"
#     from_port = 3306
#     to_port = 3306
#     protocol = "tcp"
#     security_group_id = module.aws_vpc.security_group_id
#     source_security_group_id = module.cluster_vpc.default_sg_id
# }

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

