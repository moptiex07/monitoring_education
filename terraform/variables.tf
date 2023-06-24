variable "instance_count" {
  description = "The number of instances to create"
  type        = number
  default     = 1
}

variable "ami" {
  description = "The ami to use for instance"
  type        = number
}

variable "instance_type" {
  description = "The type of instance to create"
  type        = string
  default     = "t2.micro"
}

variable "key_name" {
  description = "The name of key.pem"
  type        = string
  default     = "main.pem"
}

variable "region" {
  description = "The name of region in AWS"
  type        = string
  default     = "us-east-1"
}

