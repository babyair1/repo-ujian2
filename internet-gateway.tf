resource "aws_internet_gateway" "ujian-igw" {
  vpc_id = aws_vpc.ujian-vpc.id


  tags = {
    Name = "ujian-igw"
  }
}