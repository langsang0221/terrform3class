#AZ public subnet a
resource "aws_subnet" "ityoon_puba" {
  vpc_id = aws_vpc.ityoon_vpc.id
  cidr_block = "10.0.0.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "ityoon_puba"
  }
}

#AZ public subnet c
resource "aws_subnet" "ityoon_pubc" {
  vpc_id = aws_vpc.ityoon_vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "ityoon_pubc"
  }
}

#AZ private subnet a
resource "aws_subnet" "ityoon_pria" {
  vpc_id = aws_vpc.ityoon_vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "ityoon_pria"
  }
}

#AZ private subnet c
resource "aws_subnet" "ityoon_pric" {
  vpc_id = aws_vpc.ityoon_vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "ityoon_pric"
  }
}

#AZ private subnet db a
resource "aws_subnet" "ityoon_pribda" {
  vpc_id = aws_vpc.ityoon_vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "ap-northeast-2a"
  tags = {
    "Name" = "ityoon_pridba"
  }
}

#AZ private subnet db c
resource "aws_subnet" "ityoon_pribdc" {
  vpc_id = aws_vpc.ityoon_vpc.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "ap-northeast-2c"
  tags = {
    "Name" = "ityoon_pridbc"
  }
}