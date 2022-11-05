resource "aws_vpc" "vpc_block" {
    cidr_block = var.vpc_cidr_block
    enable_dns_hostnames = true
    tags = {
        Name = var.vpc_tag
    }
}

resource "aws_subnet" "subnet_block" {
    depends_on = [
        aws_vpc.vpc_block
    ]
    count = length(var.subnets_block)
    vpc_id = aws_vpc.vpc_block.id
    cidr_block              = element(concat(var.subnets_block, [""]), count.index)
    availability_zone       = element(concat(var.azs, [""]), count.index)
    tags = {
        Name = var.subnet_block_tag
    }
}

resource "aws_internet_gateway" "gateway_block" {
    depends_on = [aws_subnet.subnet_block]
    vpc_id     = aws_vpc.vpc_block.id
    tags = {
        Name = var.internet_gateway_tag
    }
}

resource "aws_route_table" "routetable_block" {
    depends_on = [aws_vpc.vpc_block]
    vpc_id     = aws_vpc.vpc_block.id
    tags = {
        Name = var.routetable_tag
    }
}

resource "aws_route" "public_internet_gateway" {
  route_table_id         = aws_route_table.routetable_block.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.gateway_block.id
}

resource "aws_security_group" "default" {
    name        = "aws-vpc-sg"
    description = "Default SG to alllow traffic from the VPC"
    vpc_id      = aws_vpc.vpc_block.id
    depends_on = [
        aws_vpc.vpc_block
    ]

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        //cidr_blocks = ["0.0.0.0/0"]
        security_groups = var.cluster_sec_group
    }

    ingress {
        from_port = 3306
        to_port = 3306
        protocol = "tcp"
        cidr_blocks = ["10.0.0.0/16"]
    }

    egress {
        from_port = "0"
        to_port   = "0"
        protocol  = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}