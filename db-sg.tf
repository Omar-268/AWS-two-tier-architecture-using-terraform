resource "aws_security_group" "db-sg" {
  name        = var.db-sg-name
  description = "Database Security Group"
  vpc_id      = aws_vpc.myvpc.id

  # Ingress rule removed from here to avoid cycle error

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
    Name = var.db-sg-name
  }
} 
