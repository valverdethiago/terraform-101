locals {
  terraform_test_bucket_name = join("-", [var.environment, "my-tf-test-bucket-234232387394876837648"])
  terraform_test_bucket_tags = {
    Name        = join("-", [var.environment, "Terraform Test Bucket"])
    Environment = var.environment
  }
  terraform_ec2_test_tags = {
    Name        = join("-", [var.environment, "EC2-Test"])
    Environment = var.environment
  }
}
