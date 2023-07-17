provider "aws" {
  region     = "us-east-1"  # Replace with your desired AWS region
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key
}

