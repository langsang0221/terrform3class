resource "aws_db_instance" "ityoon_db" {
  allocated_storage      = 20
  storage_type           = "gp2"
  engine                 = "mysql"
  engine_version         = "8.0"
  instance_class         = "db.t2.micro"
  name                   = "mydb"
  identifier             = "mydb"
  username               = "admin"
  password               = "dnfvm4826!"
  parameter_group_name   = "default.mysql8.0"
  availability_zone      = "ap-northeast-2a"
  db_subnet_group_name   = aws_db_subnet_group.ityoon_dbsg.id
  vpc_security_group_ids = [aws_security_group.ityoon_sg.id]
  skip_final_snapshot    = true
  tags = {
    Name = "ityoon-db"
  }
}
resource "aws_db_subnet_group" "ityoon_dbsg" {
  name       = "ityoon-dbsg"
  subnet_ids = [aws_subnet.ityoon_pridba.id, aws_subnet.ityoon_pridbc.id]
}
