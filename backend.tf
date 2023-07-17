terraform {
  backend "s3" {
    bucket = "akashkochure-backend"
    key    = "terraform.tfstate"
    region = "us-east-1"  # Replace with your desired AWS region
  }
}
