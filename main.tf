variable "ami_value" {
    description = "ami_value"
}

variable "ami_value_west1" {
    description = "ami_value_west1"
  
}

variable "instance_type_value" {
    description = "instace_type_value"
}

variable "instance_type_value_west1" {
    description = "instance_type_value_west1"
}
provider "aws" {
    alias = "us-east-1"
    region = "us-east-1"
}

provider "aws" {
    alias = "us-west-1"
    region = "us-west-1"
  
}

resource "aws_instance" "example" {
    ami = var.ami_value
    instance_type = var.instance_type_value
    provider = aws.us-east-1
}

resource "aws_instance" "example2" {
    ami = var.ami_value_west1
  instance_type = var.instance_type_value
  provider = aws.us-west-1
}