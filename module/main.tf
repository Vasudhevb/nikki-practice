provider "aws" {
  region = "us-east-1"  # Replace with your desired region
}

module "aws_instance" {
  source        = "./nikki-practice/eccc2"
  ami_id        = "ami-0453ec754f44f9a4a"  # Replace with a valid AMI ID
  instance_type = "t2.micro"
  key_name      = "anuraj"
}
