resource "aws_vpc" "vpc-internetfacing" {
  cidr_block = var.cidr
  tags       = merge(local.vpc-local-tags, var.resource)
}


#tags to be associated with locals
locals {
  vpc-local-tags = {
    igw  = "yes"
    type = "delete"
  }
}