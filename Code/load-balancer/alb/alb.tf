resource "aws_lb" "test" {
  name = var.alb_name
  internal = var.internal
  load_balancer_type = var.lb_type
  security_groups = [data.aws_security_group.pulling_security_id.id]
  subnets = data.aws_subnet.pulling_subnet_id.id
  enable_deletion_protection = var.enable_deletion_protection

  access_logs {
    bucket = aws_s3_bucket.lb_logs.bucket
    prefix = "test-lb"
    enabled = true
  }

  tags = local.common
}