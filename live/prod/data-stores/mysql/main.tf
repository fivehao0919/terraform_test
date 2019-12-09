provider "aws" {
  region = "us-east-2"
}

resource "aws_db_instance" "prod" {
  identifier_prefix = "terraform-up-and-running"
  engine             = "mysql"
  allocated_storage  = 10
  instance_class     = "db.t2.micro"
  name               = "prod_database"
  username           = "admin"

  # How should we set the password?
  password           = var.db_password
}

terraform {
  backend "s3" {
    key            = "prod/data-stores/mysql/terraform.tfstate"
    bucket         = "fivehao-terraform-up-and-running-state"
    region         = "us-east-2"
    dynamodb_table = "terraform-up-and-running-locks"
    encrypt        = true
  }
}