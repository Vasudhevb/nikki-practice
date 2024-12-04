provider "aws" {
  region = "us-east-1"  # Replace with your desired region
}

module "dhev" {
  source        = "../eccc2"
  ami       =   "ami-0453ec754f44f9a4a"
  instance_type = "t2.micro"
  key_name      = "anuraj"
}
