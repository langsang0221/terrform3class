resource "aws_key_pair" "ityoon_key" {
  key_name = "ityoon_key"
  public_key = file("../../.ssh/yoon-key.pub")
}