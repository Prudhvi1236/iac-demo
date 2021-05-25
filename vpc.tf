resource "aws_vpc" "main" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"

  tags = {
    Name = "demo-vpc"
    Purpose = "Test"
  }
}
resource "aws_s3_bucket" "b" {
  bucket = "pru29"
  acl    = "private"

  tags = {
    Name        = "Jenkins-Terraform-bucket"
    Environment = "Test"
  }
}
