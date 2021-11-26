resource "aws_autoscaling_attachment" "ityoon_asatt" {
  autoscaling_group_name = aws_autoscaling_group.ityoon_atsg.id
  alb_target_group_arn   = aws_lb_target_group.ityoon_albtg.arn
}
