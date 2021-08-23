resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.vpc-internetfacing.id
  tags   = merge(local.vpc-local-tags)
}