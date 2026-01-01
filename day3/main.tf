provider "aws" {
  region = "ap-south-1"
}

module "ec2" {
  source = "./modules/ec2"
  ami = "ami-00ca570c1b6d79f36"
  instance_type = "t2.micro"
}

module "s3" {
  source = "./modules/s3"
  bucket_name = "unique-bucket-name-7105"
  keyvalue = "readmefile"
  sourcename = "../README.md"
}