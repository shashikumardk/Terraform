#vpc id
output "vpc-id-output" {
  value = aws_vpc.vpc-internetfacing.arn
}


#routable rules
output "routable-rule" {
  value = aws_default_route_table.calling-default.route
}

#ec2 public ip
output "ec2-public-ip" {
  value = aws_instance.myinstance.public_ip
}



