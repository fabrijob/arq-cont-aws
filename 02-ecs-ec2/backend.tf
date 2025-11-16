terraform {
  backend "s3" {
    bucket = "mytf-fb25"
    key    = "02-ecs"
    region = "us-east-1"

  }
}