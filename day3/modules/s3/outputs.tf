output "bucket_arn" {
  value = aws_s3_bucket.delete_me.arn
}
output "console_link" {
  value = "https://s3.console.aws.amazon.com/s3/buckets/${aws_s3_bucket.delete_me.bucket}"
}