resource "aws_instance" "web" {
  ami                         = var.ami-id
  instance_type               = "t2.micro"
  associate_public_ip_address = "true"
  user_data = "${file("httpd.sh")}"
  subnet_id = data.aws_subnet.aws-subnet.id
  vpc_security_group_ids = [aws_security_group.aws-rab-sir-sg.id]
}

resource "aws_network_interface_sg_attachment" "sg_attachment" {
  security_group_id    = aws_security_group.aws-rab-sir-sg.id
  network_interface_id = "${aws_instance.web.primary_network_interface_id}"
}