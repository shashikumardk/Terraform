#listener rule
resource "aws_alb_listener_rule" "api_rule" {
  listener_arn = 
  priority     = var.rule_priority

  action {
    type             = "forward"
    target_group_arn = var.target_group_arn
  }

  condition {
    path_pattern {
      values = [var.path_value]
    }
  }
}