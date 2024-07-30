resource "aws_instance" "web" {
  ami           = i-03159e9a0cae186c4
  instance_type = "t3.micro"

  tags = {
    Name = "HelloWorld"
  }
}

output "web" {
    value = aws_instance.web.private_dns
  
}