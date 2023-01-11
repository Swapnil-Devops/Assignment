provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "s3_bucket" {
  bucket = "my-tf-jenkins-bucket"

  tags = {
    Name        = "My bucket"
  }
}