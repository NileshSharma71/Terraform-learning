provider "aws" {
  region = "ap-south-1"
}

module "ec2" {
  source = "./modules/ec2"
  ami = "ami-00ca570c1b6d79f36"
  instance_type = "t2.micro"
}