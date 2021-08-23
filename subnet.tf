#taking VPC data
data "aws_vpc" "vpc-id" {
  depends_on = [aws_vpc.vpc-internetfacing]
  filter {
    name   = "tag:igw"
    values = ["yes"]
  }
}


#subnet block
resource "aws_subnet" "subnets" {
  for_each                = var.azs-cidrs
  vpc_id                  = data.aws_vpc.vpc-id.id
  availability_zone       = each.key
  cidr_block              = each.value
  map_public_ip_on_launch = "true"
  tags = {
    subnet-region = each.key
  }
}


