#creating ec2 instance
resource "aws_instance" "myinstance" {
  subnet_id     = data.aws_subnet.calling-ap-south-1a-subnet.id
  ami           = var.ami-id
  instance_type = var.instance_type
  user_data = <<eof
#!/bin/bash
sudo su
yum -y install httpd
echo "<p> My Instance! </p>" >> /var/www/html/index.html
sudo systemctl enable httpd
sudo systemctl start httpd
eof
  vpc_security_group_ids = [data.aws_security_group.calling-security-group.id]
}