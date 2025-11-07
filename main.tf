# resource "aws_instance" "instance" {
#   ami           = "ami-08982f1c5bf93d976"
#   instance_type = "t3.micro"
#   count         = 1

#   tags = {
#     Name        = "olugba - ${count.index + 1}"
#     Environment = "Dev"
#   }
# }

# resource "aws_s3_bucket" "example" {
#   bucket = "my-tf-test-bucket-gbamigbamil"

#   tags = {
#     Name        = "My bucket"
#     Environment = "Dev"
#   }
# }

#Prof will show us pictures of work environment#



# resource "aws_instance" "instance" {
#   ami           = var.ami_id
#   instance_type = var.instance_type

#   user_data = <<-EOF
#               #!/bin/bash
#               apt update
#               apt install nginx -y
#               systemctl start nginx
#               systemctl enable nginx
#               EOF

#   count = 1

#   tags = {
#     Name        = "olugba - ${count.index + 1}"
#     environment = var.environment
#   }
# }

# resource "aws_s3_bucket" "example" {
#   bucket = var.bucket_id

#   tags = {
#     Name        = var.Name
#     environment = var.Env
#   }
# }

# Create a VPC
# resource "aws_vpc" "example" {
#   cidr_block = "10.0.0.0/16"
# }

module "instance" {
  source = "./module/instance"
}

module "s3" {
  source = "./module/s3"
}

module "vpc" {
  source = "./module/vpv"
}