terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}


resource "aws_instance" "app_server" {
  ami           = "ami-04e601abe3e1a910f"
  instance_type = "t2.micro"
  subnet_id = "subnet-0d77b25fd56e5cce0"

  tags = {
    Name = "ExampleAppServerInstance"
  }
}

resource "aws_ssm_parameter" "foo2" {
  name  = "foo2"
  type  = "String"
  value = "barr2"
}