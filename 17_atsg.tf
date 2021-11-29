resource "aws_placement_group" "ityoon_pg" {
  name     = "ityoon-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "ityoon_atsg" {
  name                      = "ityoon-atsg"
  min_size                  = 2
  max_size                  = 10
  health_check_grace_period = 60
  health_check_type         = "EC2"
  desired_capacity          = 2
  force_delete              = false
  launch_configuration      = aws_launch_configuration.ityoon_lacf.name
  #placement_group           = aws_placement_group.ityoon_pg.id
  vpc_zone_identifier       = [aws_subnet.ityoon_puba.id, aws_subnet.ityoon_pubc.id]
}
