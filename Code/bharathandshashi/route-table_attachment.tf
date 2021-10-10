#Creates route table
resource "aws_route_table" "create_public_route_table" {
  vpc_id = data.aws_vpc.calling-vpc.id
  tags = {
    vpc_associated = [for k, v in var.vpcs_cidr_name : k]
  }
}

#Creating route to Internet
resource "aws_route" "create_route" {
  route_table_id         = aws_route_table.create_public_route_table.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.create_igw.id
}