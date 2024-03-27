terraform {
  backend "s3" {
    bucket = "hospital-dev-waf-logs"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}   
