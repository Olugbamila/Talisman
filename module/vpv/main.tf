#Create a VPC
resource "aws_vpc" "bgcvpc" {

  cidr_block = var.cidr_block
}
