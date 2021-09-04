resource "aws_iam_group" "creating-group" {
  name = var.iam-group-name
  path = "/group/"
}

resource "aws_iam_group_membership" "team" {
  name = "tf-testing-group-membership"
  users = [var.user-name]
  group = aws_iam_group.creating-group.name
}

