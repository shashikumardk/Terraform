#resource "aws_security_group" "" {
#  name        = "allow_ssh_hhtp_hhtps"
#  description = "Allow Inbound ssh_hhtp_hhtps traffic"
#  vpc_id      = data.aws_vpc.calling-vpc.id
#  dynamic "ingress " {
#    for_each = ""
#    content {
#      from_port   = 443
#      to_port     = 443
#      protocol    = "tcp"
#      cidr_blocks = [aws_vpc.main.cidr_block]
#      ipv6_cidr_blocks = [
#        aws_vpc.main.ipv6_cidr_block
#      ]
#    }
#  }
#
#  egress = [
#    {
#      from_port        = 0
#      to_port          = 0
#      protocol         = "-1"
#      cidr_blocks      = ["0.0.0.0/0"]
#      ipv6_cidr_blocks = ["::/0"]
#    }
#  ]
#
#}