resource "aws_instance" "web" {
  ami                       = "ami-0f75a13ad2e340a58"
  instance_type             = "t2.micro"
  vpc_security_group_ids    = [var.sg]
  tags = {
    Name = "testing"
  }
}

variable "sg" {
  
}