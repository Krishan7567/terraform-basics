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
    value = aws_instance.web.public_ip
  
}

### SG creation

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "Allow ssh inbound traffic and all outbound traffic"

  ingress = {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

   egress = {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow_ssh"
  }
}