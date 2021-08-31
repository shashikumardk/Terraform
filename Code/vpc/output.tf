#vpc id
output "vpc-id-output" {
  value = aws_vpc.vpc-internetfacing.arn
}


#routable rules
output "routable-rule" {
  value = aws_default_route_table.calling-default.route
}


