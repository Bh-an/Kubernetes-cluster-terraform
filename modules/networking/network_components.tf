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