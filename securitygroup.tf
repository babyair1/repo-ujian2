resource "aws_security_group" "ujian_ssh" {
  name        = "ujian_ssh"
  description = "allow ssh inbound traffic"
  vpc_id      = "vpc-9e42b1f8"

  ingress {
    description = "ujian ssh"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
 
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ujian_ssh"
  }
}

resource "aws_security_group" "ujian_http" {
  name        = "ujian_http"
  description = "allow http inbound traffic"
  vpc_id      = "vpc-9e42b1f8"

  ingress {
    description = "ujian http"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "ujian_http"
  }
}