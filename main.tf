resource "aws_instance" "nginx" {
  ami           = "ami-1234567890abcdef0" # placeholder AMI ID (Ubuntu)
  instance_type = var.instance_type
  key_name      = var.key_name

  user_data = file("${path.module}/userdata.sh")

  vpc_security_group_ids = [aws_security_group.allow_http_ssh.id]

  tags = {
    Name = var.project_name
  }
}

resource "aws_security_group" "allow_http_ssh" {
  name        = "allow_http_ssh"
  description = "Allow inbound HTTP and SSH traffic"

  ingress {
    description = "Allow SSH"
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "Allow HTTP"
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
