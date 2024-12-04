provider "aws" {
    region = "ap-south-1"
  
}
variable "instance_type" {
    type = string
    default = "t2.micro"
  
}
variable "ami" {
    type = string
    default = "ami-08bf489a05e916bbd"
  
}
variable "key_name" {
    type = string
    default = "anuraj"
  
}
variable "sandboxes" {
    type = list(string)
    default = ["dhev" , "nikki"]
  
}

resource "aws_instance" "nikkidhev" {
    ami = var.ami
    instance_type = var.instance_type
    key_name = var.key_name
    for_each = toset(var.sandboxes)
    #count = length(var.sandboxes)
    tags = {
      Name = "sandbox-${each.value}"
      #Name = var.sandboxes[count.index]
    }
     
  
}