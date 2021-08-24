#calling single subnet in ap-south-1a
data "aws_subnet" "calling-ap-south-1a-subnet" {
  depends_on = [aws_subnet.subnets]
  vpc_id     = aws_vpc.vpc-internetfacing.id
  filter {
    name   = "tag:subnet-region"
    values = ["ap-south-1a"]
  }
}

#creating ec2 instance
resource "aws_instance" "myinstance" {
  subnet_id     = data.aws_subnet.calling-ap-south-1a-subnet.id
  ami           = var.ami-id
  instance_type = "t2.micro"
  user_data     = file("httpd.sh")
  vpc_security_group_ids = [data.aws_security_group.calling-defualt-sg.id]
}