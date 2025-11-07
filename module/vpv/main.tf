# Create a VPC
resource "aws_vpc" "gbams" {
  cidr_block = "10.0.0.0/16"
}