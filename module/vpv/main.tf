#Create a VPC
resource "aws_vpc" "gbamoooki" {
  cidr_block = "10.0.0.0/16"
}