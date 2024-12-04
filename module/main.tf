provider "aws" {
  region = "us-east-1"  # Replace with your desired region
}

module "dhev" {
  source        = "../eccc2"
  ami       =   var.ami
  instance_type = var.instance_type
  key_name      = var.key_name
}
