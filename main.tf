terraform {
  required_version = "1.2.3"
  required_providers {
    aws = { 
        sousource = "hashicorp/aws"
        version = "4.19.0"
    }
  }
}

provider "aws" {
  region = "us-east-1"
  profile = "terraform-101"
}

resource "aws_s3_bucket" "terraform-test-bucket" {
  bucket = "my-tf-test-bucket-234232387394876837648"  

  tags = {
    Name        = "Terraform Test Bucket"
    Environment = "DEV"
  }
}

resource "aws_s3_bucket_acl" "terraform-test-bucket-acl" {
  bucket = aws_s3_bucket.terraform-test-bucket.id
  acl    = "private"
}