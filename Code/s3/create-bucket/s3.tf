resource "aws_s3_bucket" "create-s3" {
  bucket = var.bucket-name
  acl    = "private"
 #force_destroy = "true"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}