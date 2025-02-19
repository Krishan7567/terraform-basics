resource "aws_security_group" "allows_ssh" {
  name        = "allows_ssh"
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
    Name = "allows_ssh"
  }
}

output "sgid" {
    value = aws_security_group.allows_ssh.id
  
}