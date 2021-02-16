resource "aws_route_table" "route-ujian" {
  vpc_id = aws_vpc.ujian-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ujian-igw.id
  }

  tags = {
    Name = "route-ujian "
  }
}

resource "aws_route_table_association" "rt-ujian1" {
  subnet_id      = aws_subnet.ujian-subnet-1.id
  route_table_id = aws_route_table.route-ujian.id
}

resource "aws_route_table_association" "rt-ujian2" {
  subnet_id      = aws_subnet.ujian-subnet-2.id
  route_table_id = aws_route_table.route-ujian.id
}

resource "aws_route_table_association" "rt-ujian3" {
  subnet_id      = aws_subnet.ujian-subnet-3.id
  route_table_id = aws_route_table.route-ujian.id
}