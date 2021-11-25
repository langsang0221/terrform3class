# public a
resource "aws_route_table_association" "ityoon_igw_puba" {
  subnet_id = aws_subnet.ityoon_puba.id
  route_table_id = aws_route_table.ityoon_rt.id
}
# public c
resource "aws_route_table_association" "ityoon_igwa_pubc" {
  subnet_id = aws_subnet.ityoon_pubc.id
  route_table_id = aws_route_table.ityoon_rt.id
}