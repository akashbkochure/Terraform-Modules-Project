resource "aws_instance" "example_instance" {

ami = "ami-053b0d53c279acc90"
instance_type = "t2.micro"
key_name = "akash"
subnet_id = "subnet-040125d0d475b32b3"
vpc_security_group_ids = ["sg-046b97488b18a7815"]
tags = {
Name = "ec2"
}
}

resource "aws_iam_user" "example_user" {
name = "vinay"
}

resource "aws_s3_bucket" "example_bucket" {
bucket = "akashbkochure-prod"
}

resource "aws_vpc" "example_vpc"{
cidr_block = "10.0.0.0/16"
tags = {
Name = "vpc"
}
}
