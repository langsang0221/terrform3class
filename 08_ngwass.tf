# private a
resource "aws_route_table_association" "ityoon_ngwass_pria" {
  subnet_id      = aws_subnet.ityoon_pria.id
  route_table_id = aws_route_table.ityoon_ngwrt.id
}

# private c
resource "aws_route_table_association" "ityoon_ngwass_pric" {
  subnet_id      = aws_subnet.ityoon_pric.id
  route_table_id = aws_route_table.ityoon_ngwrt.id
}

# private db a
resource "aws_route_table_association" "ityoon_ngwass_pridba" {
  subnet_id      = aws_subnet.ityoon_pridba.id
  route_table_id = aws_route_table.ityoon_ngwrt.id
}

# private db c
resource "aws_route_table_association" "ityoon_ngwass_pridbc" {
  subnet_id      = aws_subnet.ityoon_pridbc.id
  route_table_id = aws_route_table.ityoon_ngwrt.id
}
