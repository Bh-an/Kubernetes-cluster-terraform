s3_bucket_name = "kops-bhan-csye7125"
subdomain_value = "kops.prod.applicationbhan.me"
main_domain_value = "prod.applicationbhan.me"

cluster_vpc_cidr_block = "10.0.0.0/16"
aws_vpc_cidr_block = "10.1.0.0/16"

cluster_vpc_tag = "cluster-vpc"
aws_vpc_tag = "aws-vpc"

cluster_public_subnets_block = ["10.0.1.0/24", "10.0.2.0/24", "10.0.3.0/24"]
cluster_private_subnets_block = ["10.0.101.0/24", "10.0.102.0/24", "10.0.103.0/24"]
aws_subnets_block = ["10.1.1.0/24", "10.1.2.0/24", "10.1.3.0/24"]

azs = ["us-east-1a", "us-east-1b", "us-east-1c"]

cluster_subnet_block_tag = "cluster_subnet"
cluster_internet_gateway_tag = "cluster_igw"
cluster_routetable_tag = "cluster_routetable"

aws_subnet_block_tag = "aws_subnet"
aws_internet_gateway_tag = "aws_igw"
aws_routetable_tag = "aws_routetable"

rds_allocated_storage = "5"
rds_engine = "mysql"
rds_instance_class = "db.t2.micro"
rds_name = "tfk8rds"
rds_username = "tfk8"
rds_password = "tfk8password"
rds_tag = "aws_vpc_rds"

environment="k8cluster"
region="us-east-1"
