#code for creating IAM policy
resource "aws_iam_policy" "creating-admin-policy" {
  name = "test-role"
  path = "/policy/"
  policy = file("${var.policy-name}-policy.json")
  tags = {
    date = var.date
  }
}


#attaching IAM policy code
resource "aws_iam_policy_attachment" "test-attach" {
  name       = "attach"
  groups     = [aws_iam_group.creating-group.name]
  policy_arn = aws_iam_policy.creating-admin-policy.arn
  #enable if required for future use
  #users      = [var.user-name]
  #roles      = [aws_iam_role.role.name]
}


