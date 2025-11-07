resource "aws_instance" "instance" {
  ami           = "ami-08982f1c5bf93d976"
  instance_type = "t3.micro"

     user_data = <<-EOF
                 #!/bin/bash
                 apt update
                 apt install nginx -y
                 systemctl start nginx
                 systemctl enable nginx
                 EOF

  count         = 1

  tags = {
    Name        = "gbamila. - ${count.index + 1}"
    Environment = "Dev"
  }
}