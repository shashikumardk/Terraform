data "aws_security_group" "calling-defualt-sg" {
  depends_on = [aws_vpc.vpc-internetfacing]
  vpc_id     = data.aws_vpc.vpc-id.id
}

resource "aws_security_group_rule" "opentoworld" {
  type              = "ingress"
  from_port         = 0
  to_port           = 65535
  protocol          = "tcp"
  cidr_blocks       = ["0.0.0.0/0"]
  security_group_id = data.aws_security_group.calling-defualt-sg.id
}

