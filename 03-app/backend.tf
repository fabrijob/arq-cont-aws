terraform {
  backend "s3" {
    bucket = "mytf-fb25"
    key    = "03-app"
    region = "us-east-1"

  }
}