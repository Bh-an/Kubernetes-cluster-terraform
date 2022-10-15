output "vpc_id" {
    value = aws_vpc.vpc_block.id
}

output "route_table_id" {
    value = aws_route_table.routetable_block.id
}

output "subnet_id" {
    value = aws_subnet.subnet_block[*].id
}