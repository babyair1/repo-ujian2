resource "aws_security_group" "ujian-alb-http" {
  name        = "ujian-alb-http"
  description = "allow http inbound traffic alb"
  vpc_id      = aws_vpc.ujian-vpc.id

  ingress {
    description = "http from VPC"
    from_port   = 80
    to_port     = 80
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
    Name = "ujian-alb-http"
  }
}