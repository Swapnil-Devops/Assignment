terraform {
  backend "s3" {
    bucket = "my-tf-jenkins-bucket"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}   
