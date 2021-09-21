#To publich eip of ec2 instance
output "publish_eip" {
  value = aws_eip.create_eip.public_ip
}