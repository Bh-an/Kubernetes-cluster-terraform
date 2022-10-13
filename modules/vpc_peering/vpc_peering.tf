resource "aws_vpc_peering_connection" "vpc_peering" {
    vpc_id = var.requestor_vpc_id
    peer_vpc_id = var.acceptor_vpc_id
    auto_accept = true
}

resource "aws_route" "requestor2acceptor" {
    route_table_id = var.requestor_route_table_id
    destination_cidr_block = var.acceptor_cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
}

resource "aws_route" "acceptor2requestor" {
    route_table_id = var.acceptor_route_table_id
    destination_cidr_block = var.requestor_cidr_block
    vpc_peering_connection_id = aws_vpc_peering_connection.vpc_peering.id
}