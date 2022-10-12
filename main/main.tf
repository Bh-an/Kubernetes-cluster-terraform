provider "aws" {
    region = "us-east-1"
}

module "networking" {
    source = "../modules/networking"
    cluster_vpc_cidr_block = var.cluster_vpc_cidr_block
    vpc_tag = var.vpc_tag
    subnet_block_count = var.subnet_block_count
    azs = var.azs
    internet_gateway_tag = var.internet_gateway_tag
    routetable_tag = var.routetable_tag
}

module "rds" {
    source = "../modules/rds"
    rds_allocated_storage = var.rds_allocated_storage
    rds_engine = var.rds_engine
    rds_instance_class = var.rds_instance_class
    rds_name = var.rds_name
    rds_username = var.rds_username
    rds_password = var.rds_password
    aws_vpc = var.aws_vpc
    rds_tag = var.rds_tag
}