output "vpc_id" {
    value = aws_vpc.vpc_block.id
}

output "route_table_id" {
    value = aws_route_table.routetable_block.id
}