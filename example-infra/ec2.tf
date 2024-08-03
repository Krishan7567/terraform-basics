resource "aws_instance" "web" {
  ami           = "ami-0f75a13ad2e340a58"
  instance_type = "t2.micro"

  tags = {
    Name = "testing"
  }
}

output "web" {
    value = aws_instance.web.private_dns
  
}

output "test" {
    value = aws_instance.test.public_ip
  
}