resource "aws_launch_configuration" "ityoon_lacf" {
  name_prefix          = "ityoon-lacf"
  image_id             = aws_ami_from_instance.ityoon_ami.id
  instance_type        = "t2.micro"
  iam_instance_profile = "admin_role"
  security_groups      = [aws_security_group.ityoon_sg.id]
  key_name             = "ityoon_key"
  user_data            = <<-EOF
                            #!/bin/bash
                            systemctl start httpd
                            systemctl enable httpd
                            EOF
}
