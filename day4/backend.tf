terraform {
  backend "s3" {
    bucket = "forstatefiles-learnterraform-2026"
    region = "ap-south-1"
    key = "day4/terraform.tfstate"
    use_lockfile = true
  }
}