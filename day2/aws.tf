resource "aws_instance" "example" {
    ami = "ami-00ca570c1b6d79f36"
    instance_type = "t2.micro"
    subnet_id = "subnet-06052fccc51f1f14c"
    tags = {
        Name = "second"
    }
}