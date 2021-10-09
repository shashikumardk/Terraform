#create IGW
resource "aws_internet_gateway" "create_igw" {
  vpc_id = data.aws_vpc.calling-vpc.id
}