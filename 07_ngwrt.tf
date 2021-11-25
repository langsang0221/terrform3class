resource "aws_route_table" "ityoon_ngwrt" {
  vpc_id = aws_vpc.ityoon_vpc.id
  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.ityoon_ngw.id
  }
  tags = {
    "Name" = "ityoon_ngwrt"
  }
}
