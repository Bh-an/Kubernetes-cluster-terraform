resource "aws_db_instance" "rds_instance" {
    allocated_storage = var.rds_allocated_storage
    engine = var.rds_engine
    instance_class = var.rds_instance_class
    name = var.rds_name
    username = var.rds_username
    password = var.rds_password
    db_subnet_group_name = var.aws_vpc
    tags = {
        Name = var.rds_tag
    }
}