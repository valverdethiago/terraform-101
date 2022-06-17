variable "environment" {
  type = string
}

variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "aws_profile" {
  type    = string
  default = "terraform-101"
}

variable "ec2_test_ami" {
  type    = string
  default = "ami-0cff7528ff583bf9a"
}

variable "ec2_test_instance_type" {
  type    = string
  default = "t2.micro"
}