resource "aws_lambda_permission" "allow_bucket" {
  statement_id  = "AllowExecutionFromS3Bucket"
  action        = "lambda:InvokeFunction"
  function_name = "execution"
  principal     = "s3.amazonaws.com"
  source_arn    = aws_s3_bucket.create-s3.arn
}

resource "aws_s3_bucket_notification" "bucket_notification" {
  bucket = aws_s3_bucket.create-s3.bucket

  lambda_function {
    lambda_function_arn = "arn:aws:lambda:ap-south-1:600112274504:function:execution"
    events              = ["s3:ObjectCreated:*"]
    filter_prefix       = "AWSLogs/"
    filter_suffix       = ".log"
  }

  depends_on = [aws_lambda_permission.allow_bucket]
}