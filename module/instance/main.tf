resource "aws_instance" "instance" {
  ami           = var.ami_id
  instance_type = var.instance_type

     user_data = <<-EOF
                 #!/bin/bash
                 apt update
                 apt install nginx -y
                 systemctl start nginx
                 systemctl enable nginx
                 EOF

  count         = 1

  tags = {
    Name        = var.Name
    Environment = "Dev"
  }
}