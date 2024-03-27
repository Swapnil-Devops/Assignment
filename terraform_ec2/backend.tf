terraform {
  backend "s3" {
    bucket = "hospital-dev-waf-logs"
    key    = "terraform.tfstate"
    region = "ap-south-1"
  }
}   
