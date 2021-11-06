provider "aws" {
  version = "~> 3.0"
  region  = "us-east-1"
}
resource "aws_instance" "foo" {
  ami           = "ami-005e54dee72cc1d00"
  instance_type = "t2.micro"
