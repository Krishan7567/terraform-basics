resource "aws_security_group" "robo" {
  name        = "robo"
  description = "Allow ssh inbound traffic and all outbound traffic"

  ingress {
    from_port        = 22
    to_port          = 22
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

   egress {
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  tags = {
    Name = "robo"
  }
}

output "sgid" {
    value = aws_security_group.robo.id
  
}