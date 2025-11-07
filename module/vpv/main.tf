#Create a VPC
resource "aws_vpc" "g" {
  cidr_block = "10.0.0.0/16"
}