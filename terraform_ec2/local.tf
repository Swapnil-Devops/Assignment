locals {
  instance_name = "terraform_${terraform.workspace}_ec2"
  security_group_name = "terraform_${terraform.workspace}_SG"
}