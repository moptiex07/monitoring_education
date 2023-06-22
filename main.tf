provider "aws" {
  region = "us-east-1"  
}

resource "aws_instance" "app01" {
  count = 1  
  ami           = "ami-022e1a32d3f742bd8"  
  instance_type = "t2.micro"  
  key_name = "main.pem"  
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = "app01"  
  }
}

resource "aws_instance" "mon01" {
  count = 1
  ami           = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"
  key_name = "main.pem"
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = "mon01"                
  }
}

resource "aws_instance" "prom01" {
  count = 1
  ami           = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"
  key_name = "main.pem"
  vpc_security_group_ids = [aws_security_group.sg.id]
  tags = {
    Name = "prom01"                
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
