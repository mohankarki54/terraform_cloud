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

resource "aws_instance" "example" {
  ami           = "ami-04d29b6f966df1537"
  instance_type = "t2.micro"
  vpc_security_group_ids = ["sg-08193d745a3af6f7e"]
  key_name = "DevOpsKey"
  tags = {
   Name = "Terraform"
   Environment = "Development"
  }
}

