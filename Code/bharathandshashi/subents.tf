#block to create subnet resource
resource "aws_subnet" "create-subnet" {
  for_each          = { for idx, record in local.az_cidr_list : idx => record }
  vpc_id            = data.aws_vpc.calling-vpc.id
  availability_zone = each.value.azs
  cidr_block        = each.value.cidr
  tags = {
    azs = each.value.azs
  }
}