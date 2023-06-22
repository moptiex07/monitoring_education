provider "aws" {
  region = "us-east-1"  # замените на ваш регион
}

resource "aws_instance" "vm" {
  count = 3  

  ami           = "ami-0c94855ba95c574c8"  
  instance_type = "t2.micro"  

  key_name = "your_key_name"  

  tags = {
    Name = "vm-${count.index + 1}"  # уникальное имя для каждого инстанса
  }
}

