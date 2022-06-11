# Data VPC

data "aws_vpc" "selected" {
  filter {
    name   = "tag:Name"
    values = ["bootcamp-vpc"]
  }
}

# Data of Subnet

data "aws_subnet" "bootcamp_private_sub_2a" {
  filter {
    name   = "tag:Name"
    values = ["bootcamp-vpc-private-us-east-2b"]
  }
}

# Key

data "aws_key_pair" "basic_keypair" {
  key_name = "bootcamp"
  filter {
    name   = "tag:Name"
    values = ["bootcamp"]
  }
}