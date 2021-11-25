# Elastic IP 
resource "aws_eip" "ityoon_eip" {
  vpc = true
}

# NAT gateway
resource "aws_nat_gateway" "ityoon_ngw" {
  allocation_id = aws_eip.ityoon_eip.id
  subnet_id     = aws_subnet.ityoon_puba.id
  tags = {
    "Name" = "ityoon_ngw"
  }

  # To ensure proper ordering, it is recommended to add an explicit dependency
  # on the Internet Gateway for the VPC.
  # depends_on = [aws_internet_gateway.example]
}
