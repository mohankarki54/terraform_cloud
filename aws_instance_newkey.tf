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

resource "aws_instance" "example1" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08193d745a3af6f7e"]
  tags = {
   Name = "Terraform"
   Environment = "Development"
  }
}

resource "aws_key_pair" "deploy" {
 key_name = "Teraform_key"
 public_key = "ssh-rsa"

}
