resource "aws_ami_from_instance" "ityoon_ami" {
  name               = "ityoon-ami"
  source_instance_id = aws_instance.ityoon_web.id
  depends_on = [
    aws_instance.ityoon_web
  ]
}
