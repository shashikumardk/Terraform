#This block creates new EIP block and associates with given Instance
resource "aws_eip" "create_eip" {
  vpc      = true
  instance = data.aws_instance.pull-instance-id.id
}