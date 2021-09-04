provider "aws" {
  profile = "default"
  region  = "ap-south-1"
}

resource "aws_iam_user" "creating-user" {
  name = var.user-name
  path = "/users/"
  force_destroy = "false"
}

/*
resource "aws_iam_user_login_profile" "example" {
  user    = aws_iam_user.creating-user.name
  password_reset_required = "false"
  #download the application using this Url https://keybase.io/download
  pgp_key = "keybase:some_person_that_exists"
}
*/



















