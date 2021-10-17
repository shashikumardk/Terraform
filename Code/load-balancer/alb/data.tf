#Pulling Subnet value
data "aws_subnet" "pulling_subnet_id" {}

#Pulling Security value
data "aws_security_group" "pulling_security_id" {}