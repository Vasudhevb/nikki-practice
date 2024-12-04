variable "ami_id" {
    type = string
    default = ""
}
variable "instance_type" {
    type = string
    default = ""
  
}
variable "key_name" {
    type = string
    default = ""
     
  
}
variable "aws_instance" {
    type = list(string)
    default = [ "nikki","dhev" ]
  
}