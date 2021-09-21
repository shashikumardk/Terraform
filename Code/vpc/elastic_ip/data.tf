#This block receives the Instance id using Tags
data "aws_instance" "pull-instance-id" {
  filter {
    name   = var.filter_key
    values = var.filter_value
  }
}