resource "aws_db_subnet_group" "db_subnet_group" {
    name = "db_subnet"
    subnet_ids = ["${var.subnet_id[0]}", "${var.subnet_id[1]}", "${var.subnet_id[2]}"]
}


resource "aws_db_instance" "rds_instance" {
    allocated_storage = var.rds_allocated_storage
    engine = var.rds_engine
    instance_class = var.rds_instance_class
    name = var.rds_name
    username = var.rds_username
    password = var.rds_password
    skip_final_snapshot = true
    db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
    tags = {
        Name = var.rds_tag
    }
}