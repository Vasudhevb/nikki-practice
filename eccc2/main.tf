provider "aws" {
    region = "ap-south-1"
  
}

resource "aws_instance" "nikki" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    tags = {
      Name = "nikkidhev"
    }
  
}