resource "aws_vpc" "my-vpc" {
cidr_block = "10.0.0.0/16"

tags = {
Name = "MyVPC"
}
}

resource "aws_subnet" "my-subnet" {
vpc_id = aws_vpc.my-vpc.id
cidr_block = "10.0.1.0/24"
availability_zone = "us-east-1d"
map_public_ip_on_launch = true  # Make sure this option is set to true

tags = {
Name = "MySubnet"
}
}

resource "aws_internet_gateway" "my-gw" {
vpc_id = aws_vpc.my-vpc.id
}

resource "aws_route_table" "example" {
vpc_id = aws_vpc.my-vpc.id

route {
cidr_block = "0.0.0.0/0"
gateway_id = aws_internet_gateway.my-gw.id

}

route {
ipv6_cidr_block = "::/0"
gateway_id = aws_internet_gateway.my-gw.id
}

tags = {
Name = "my-route"
}
}

resource "aws_route_table_association" "association" {
subnet_id = aws_subnet.my-subnet.id
route_table_id = aws_route_table.example.id
}
