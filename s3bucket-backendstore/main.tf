provider "aws" {
  region = "ap-south-1"  # Specify the AWS region (Asia Pacific - Mumbai)
}

resource "aws_instance" "nikkidhev" {
    ami = var.ami_id
    key_name = var.key_name
    instance_type = var.instance_type
    for_each = toset(var.aws_instance)
    tags = {
      Name = each.value
    }

  
}

resource "aws_s3_bucket" "nikkidhev" {
  bucket = "nikkidhev-bucketstorage"  # Replace with a unique bucket name

  versioning {
    enabled = false  # Enable versioning on the bucket
  }
}