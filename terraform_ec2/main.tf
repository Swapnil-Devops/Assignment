
resource "aws_instance" "ec2_example"{
  ami                      = var.ami
  instance_type            = var.instance_type
  key_name = "redash"
  security_groups = [aws_security_group.sg_by_terraform.name]
  tags = {
    Name = local.instance_name
  }

}

resource "aws_security_group" "sg_by_terraform" {
  name        = local.security_group_name
  description = "Allow HTTP and SSH traffic via Terraform"
  vpc_id      = var.vpc_id

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
  tags = {
    Name = "sg_by_terraform"
  }
}