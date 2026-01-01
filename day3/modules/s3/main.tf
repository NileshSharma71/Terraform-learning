provider "aws" {
  region = "ap-south-1"
}

resource "aws_s3_bucket" "delete_me" {
  bucket = var.bucket_name
  tags = {
    name="example bucket"
  }
}

resource "aws_s3_object" "name" {
  key = var.keyvalue
  bucket = aws_s3_bucket.delete_me.id
  source = var.sourcename
  server_side_encryption = "AES256"
}