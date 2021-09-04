/*
#aws credentials
provider "aws" {
  region  = "ap-south-1"
  profile = "admin"
}
*/

#calling single subnet in ap-south-1a
data "aws_subnet" "calling-ap-south-1a-subnet" {
  depends_on = [aws_subnet.subnets]
  vpc_id     = aws_vpc.vpc-internetfacing.id
  filter {
    name   = "tag:subnet-region"
    values = ["ap-south-1a"]
  }
}
