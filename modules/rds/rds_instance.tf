# data "aws_subnet" "get_aws_vpc" {
#     filter {
#         name = "tag:Name"
#         values = var.aws_vpc_tag
#     }
# }

# resource "aws_db_subnet_group" "db_subnet_group" {
#     name = "db_subnet"
#     subnet_ids = ["${data.aws_subnet.get_aws_vpc[0].id}", "${data.aws_subnet.get_aws_vpc[1].id}", "${data.aws_subnet.get_aws_vpc[2].id}"]
# }

data "aws_subnet_ids" "list_ids" {
    vpc_id = var.aws_vpc_id
}

data "aws_subnet" "each_subnet" {
    # for_each = data.aws_subnet_ids.list_ids.ids
    # id = each.value

    count = "3"
    id    = "${tolist(data.aws_subnet_ids.list_ids.ids)[count.index]}"
}

resource "aws_db_subnet_group" "db_subnet_group" {
    name = "db_subnet"
    subnet_ids = "${data.aws_subnet.each_subnet.*.id}"
}


resource "aws_db_instance" "rds_instance" {
    allocated_storage = var.rds_allocated_storage
    engine = var.rds_engine
    instance_class = var.rds_instance_class
    name = var.rds_name
    username = var.rds_username
    password = var.rds_password
    db_subnet_group_name = aws_db_subnet_group.db_subnet_group.name
    tags = {
        Name = var.rds_tag
    }
}