variable "region" {
  default = "us-east-1"
}

variable "function_name" {
  default = "Test_Lambda_Function"
}

variable "handler" {
  default = "index.lambda_handler"
}

variable "runtime" {
  default = "python3.8"
}

variable "allocated_storage" {
  default = "20"
}

variable "engine" {
  default = "postgres"
}

variable "identifier" {
  default = "dev-db" 
}

variable "engine_version" {
  default = "13"
}

variable "instance_class" {
  default = "db.t3.medium"
}

variable "name" {
  default = "ntweeklydb001"
}

variable "username" {
  default = "dbadmin1"
}

variable "password" {
  default = "SwaPnil!A$$ignMent" 
}

variable "skip_final_snapshot" {
  default = true
}

variable "publicly_accessible" {
  default = true
}

variable "vpc_id" {
  description = "ID of the VPC where to create security group"
  type        = string
  default     = "vpc-0710f9f2803098940"
}

variable "subnet_ids" {
  description = "subnet id "
  type        = list
  default     = ["subnet-00c796752414aa087","subnet-00a45de51433a2b82"]
}









