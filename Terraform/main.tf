resource "aws_vpc" "main" {
  provider = aws.spoke1-region1
  cidr_block = "10.0.0.0/16"
}

resource "aws_security_group" "allow_tls" {
  provider = aws.spoke1-region1
  name        = "allow_tls"
  description = "Allow TLS inbound traffic"
  vpc_id      = aws_vpc.main.id

  ingress {
    description      = "TLS from VPC"
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
  }

  egress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = [aws_vpc.main.cidr_block]
  }

  tags = {
    Name = "allow_tls"
  }
}