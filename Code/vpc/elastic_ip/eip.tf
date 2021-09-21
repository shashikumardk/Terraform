#This block creates new EIP block and associates with given Instance
resource "aws_eip" "lb" {
  vpc      = true
  instance = data.aws_instance.pull-instance-id.id
}