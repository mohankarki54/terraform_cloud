terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 2.70"
    }
  }
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "tls_private_key" "example" {
  algorithm = "RSA"
  rsa_bits  = 4096
}

resource "aws_key_pair" "generated_key" {
  key_name   = "DevOps"
  public_key = "${tls_private_key.example.public_key_openssh}"
}

resource "aws_instance" "example1" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08193d745a3af6f7e"]
  key_name      = "${aws_key_pair.generated_key.key_name}"
  tags = {
   Name = "Terraform"
   Environment = "Development"
  }
}

output "DevOps"{
 value = aws_key_pair.generated_key.public_key
}
