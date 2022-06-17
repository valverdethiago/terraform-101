terraform {
  required_version = "1.2.3"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.19.0"
    }
  }
}

provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}

resource "aws_s3_bucket" "terraform-test-bucket" {
  bucket = local.terraform_test_bucket_name
  tags   = local.terraform_test_bucket_tags
}

resource "aws_s3_bucket_acl" "terraform-test-bucket-acl" {
  bucket = aws_s3_bucket.terraform-test-bucket.id
  acl    = "private"
}

resource "aws_instance" "ec2-test" {
  ami           = var.ec2_test_ami
  instance_type = var.ec2_test_instance_type
  tags          = local.terraform_ec2_test_tags
}