#block to create VPC resource
resource "aws_vpc" "create-vpc" {
  for_each   = { for k, v in var.vpcs_cidr_name : k => v }
  cidr_block = each.value
  tags = {
    vpc_name = each.key
    cidr     = each.value
  }
}