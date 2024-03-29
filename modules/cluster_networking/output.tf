output "vpc_id" {
  value = aws_vpc.vpc.id
}

output "public_subnets_id0" {
  value = "${aws_subnet.public_subnet[0].id}"
}

output "public_subnets_id1" {
  value = "${aws_subnet.public_subnet[1].id}"
}

output "public_subnets_id2" {
  value = "${aws_subnet.public_subnet[2].id}"
}

output "private_subnets_id0" {
  value = "${aws_subnet.private_subnet[0].id}"
}

output "private_subnets_id1" {
  value = "${aws_subnet.private_subnet[1].id}"
}

output "private_subnets_id2" {
  value = "${aws_subnet.private_subnet[2].id}"
}

# output "public_subnets_id" {
#   value = ["${aws_subnet.public_subnet.*.id}"]
# }

# output "private_subnets_id" {
#   value = ["${aws_subnet.private_subnet.*.id}"]
# }

output "default_sg_id" {
  value = aws_security_group.default.id
}

output "security_groups_ids" {
  value = ["${aws_security_group.default.id}"]
}

output "public_route_table" {
  value = aws_route_table.public.id
}