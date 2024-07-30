resource "aws_instance" "web" {
  ami           = "ami-03159e9a0cae186c4"
  instance_type = "t2.micro"

  tags = {
    Name = "HelloWorld"
  }
}

output "web" {
    value = aws_instance.web.private_dns
  
}