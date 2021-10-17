resource "aws_instance" "mull" {
for_each = { for k, v in var.ec2_and_sub : k => v }
  ami           = "ami-0a23ccb2cdd9286bb"
  instance_type = "t2.micro"
  subnet_id     = data.aws_subnet.subnet[each.key].id
  tags = {
    name = each.value.name
  }
}


data "aws_subnet" "subnet" {
  for_each = { for k, v in var.ec2_and_sub : k => v }
  filter {
    name   = "tag:Name"
    values = [each.value.subnet]
  }
}


variable "ec2_and_sub" {
  type = map(map(string))
}