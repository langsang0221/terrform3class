resource "aws_lb_target_group_attachment" "ityoon_albtgatt" {
  target_group_arn = aws_lb_target_group.ityoon_albtg.arn
  target_id        = aws_instance.ityoon_web.id
  port             = 80
}
