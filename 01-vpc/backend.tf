terraform {
  backend "s3" {
    bucket = "mytf-fb"
    key    = "01-vpc"
    region = "us-east-1"

  }
}