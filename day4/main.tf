provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "example" {
    ami = "ami-00ca570c1b6d79f36"
    instance_type = "t2.micro"
    tags = {
        Name = "third"
    }
}
resource "aws_s3_bucket" "name" {
  bucket = "forstatefiles-learnterraform-2026"
}
