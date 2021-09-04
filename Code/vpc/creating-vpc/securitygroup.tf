resource "aws_security_group" "security-group" {
  name = "open-to-world"
  description = "Allow All traffic"
  revoke_rules_on_delete = "true"
  vpc_id = aws_vpc.vpc-internetfacing.id
  tags = {
    vpc-id = aws_vpc.vpc-internetfacing.id
  }
}


resource "aws_security_group_rule" "opentoworld" {
  type              = "ingress"
  from_port         = 0
  to_port           = 0
  protocol          = "-1"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = aws_security_group.security-group.id
}

