data "aws_vpc" "calling-vpc" {
  depends_on = [aws_vpc.create-vpc]
  filter {
    name   = "tag:vpc_name"
    values = [for k, v in var.vpcs_cidr_name : k] #This blocks helps to filer vpc_name from "vpcs_cidr_name" variable
  }
}