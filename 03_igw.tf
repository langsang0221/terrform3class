resource "aws_internet_gateway" "ityoon_igw" {
  vpc_id = aws_vpc.ityoon_vpc.id

  tags = {
    Name = "ityoon_igw"
  }
}