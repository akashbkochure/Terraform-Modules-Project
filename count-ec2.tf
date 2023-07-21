# ec2.tf

resource "aws_instance" "ec2_instance" {
  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.ssh_key_name
  
  vpc_security_group_ids = [aws_security_group.ec2_sg.id]
  subnet_id              = aws_subnet.my-subnet.id
  
  count = 3

  # Uncomment the following user_data block if you want to provide custom user data for each instance
  # user_data = <<-EOF
  #   #!/bin/bash
  #   sudo apt update -y
  #   sudo apt install apache2 -y
  #   sudo systemctl start apache2
  #   sudo bash -c "echo your first web server by Akash Kochure > /var/www/html/index.html"
  # EOF

  # Uncomment the following tags block if you want to assign tags to each instance
  # tags = {
  #   Name = "helloworld-instance-${count.index + 1}"
  # }
}
