provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
}
resource "aws_instance" "foo" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t2.micro"

  resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}

resource "aws_default_subnet" "default_az1" {
  availability_zone = "us-west-2a"

  tags = {
    Name = "Default subnet for us-west-2a"
  }
}
