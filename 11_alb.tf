resource "aws_lb" "ityoon_alb" {
  name               = "ityoon-alb"
  internal           = false
  load_balancer_type = "application"
  security_groups    = [aws_security_group.ityoon_sg.id]
  subnets            = [aws_subnet.ityoon_puba.id, aws_subnet.ityoon_pubc.id]
  tags = {
    Name = "ityoon_alb"
  }
}

output "dns_name" {
  value = aws_lb.ityoon_alb.dns_name
}
