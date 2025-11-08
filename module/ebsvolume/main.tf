resource "aws_ebs_volume" "BGC" {
  availability_zone = var.availability_zone
  size              = var.size

  tags = {
    Name = var.Name
  }
}