provider "aws" {
  region = var.region  
}

resource "aws_instance" "app01" {
  count = var.instance_count  
  ami           = var.ami  
  instance_type = var.instance_type  
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = "app01"  
  }
}

resource "aws_instance" "mon01" {
  count = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = "mon01"                
  }
}

resource "aws_instance" "prom01" {
  count = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = "prom01"                
  }
}

resource "aws_instance" "apm01" {
  count = var.instance_count
  ami           = var.ami
  instance_type = var.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = "apm01"
  }
}

resource "aws_security_group" "sg" {
  name        = "my_security_group"
  description = "Allow all incoming and outgoing traffic"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "my_security_group"
  }
}

output "app01_ip" {
  value = aws_instance.app01[0].public_ip
  description = "Public IP of the app01 instance"
}

output "mon01_ip" {
  value = aws_instance.mon01[0].public_ip
  description = "Public IP of the mon01 instance"
}

output "prom01_ip" {
  value = aws_instance.prom01[0].public_ip
  description = "Public IP of the prom01 instance"
}
