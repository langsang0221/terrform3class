resource "aws_route_table" "ityoon_rt" {
  vpc_id = aws_vpc.ityoon_vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.ityoon_igw.id
  }
  
  tags = {
    Name = "ityoon_rt"
  }
}