#calling single subnet in ap-south-1a
data "aws_subnet" "calling-ap-south-1a-subnet" {
  filter {
    name   = "tag:subnet-region"
    values = [var.region_tag]
  }
}

#calling security group
data "aws_vpc" "calling-vpc" {
  filter {
    name = "tag:igw"
    values = ["yes"]
  }
}

data "aws_security_group" "calling-security-group" {
  vpc_id = data.aws_vpc.calling-vpc.id
  filter {
    name = "tag:vpc-id"
    values = [data.aws_vpc.calling-vpc.id]
  }
}
