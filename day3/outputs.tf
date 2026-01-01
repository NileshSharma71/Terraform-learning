output "public_ip" {
  value = module.ec2.public_ip
}
output "bucket_arn" {
  value = module.s3.bucket_arn
}
output "s3_console_link" {
  value = module.s3.console_link
}