variable "instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t2.micro"
}

variable "ssh_key_name" {
  description = "Name of the SSH key pair"
  type        = string
  default     = "akash"
}

variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
  default     = "ami-09e67e426f25ce0d7"  # Replace with your desired AMI ID
}

variable "aws_access_key" {
  description = ""
  type        = string
  default     = ""  # Replace with your AWS access key or provide it via environment variable
}

variable "aws_secret_key" {
  description = ""
  type        = string
  default     = ""  # Replace with your AWS secret access key or provide it via environment variable
}
