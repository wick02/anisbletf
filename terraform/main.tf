terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.44"
    }
  }

  required_version = ">= 1.7.4"
}



resource "aws_instance" "ubuntu" {
  ami           = var.ami_ubuntu 
  count         = var.instance_count  
  instance_type = var.ami_type
  key_name      = var.key_name  
  subnet_id     = var.subnet_id


  tags = {
    Name = "ubuntu-${count.index}"
  }
}

resource "aws_instance" "prometheus" {
  ami           = var.ami_ubuntu
  instance_type = var.ami_type 
  key_name      = var.key_name  
  subnet_id     = var.subnet_id

  tags = {
    Name = "prometheus"
  }
}
