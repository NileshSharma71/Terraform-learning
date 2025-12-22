provider "aws" {
  region = "ap-south-1"
}

resource "aws_instance" "firstoneterra" {
    ami = "ami-02b8269d5e85954ef"
    instance_type = "t2.micro"
    subnet_id = "subnet-06052fccc51f1f14c"
    tags = {
        Name = "firstoneterra"
    }
}