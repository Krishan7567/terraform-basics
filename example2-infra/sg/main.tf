resource "aws_security_group" "ssh_allow" {
  name        = "ssh_allow"
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
    Name = "ssh_allow"
  }
}

#output

output "sgid" {
    value = aws_security_group.ssh_allow
}