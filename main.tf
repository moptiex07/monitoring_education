provider "aws" {
  region = "us-east-1"  
}

resource "aws_instance" "app01" {
  count = 1  
  ami           = "ami-022e1a32d3f742bd8"  
  instance_type = "t2.micro"  
  key_name = "main"  

  tags = {
    Name = "app01"  
  }
}

resource "aws_instance" "mon01" {
  count = 1
  ami           = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"
  key_name = "main"

  tags = {
    Name = "mon01"                
  }
}

resource "aws_instance" "prom01" {
  count = 1
  ami           = "ami-022e1a32d3f742bd8"
  instance_type = "t2.micro"
  key_name = "main"

  tags = {
    Name = "prom01"                
  }
}

