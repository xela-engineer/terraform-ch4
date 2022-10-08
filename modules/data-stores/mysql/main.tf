provider "aws" {
  region = "us-east-2"
}

resource "aws_db_instance" "example" {
  identifier_prefix   = "${var.cluster_name}"
  engine              = "mysql"
  allocated_storage   = 10
  instance_class      = "db.t2.micro"
  skip_final_snapshot = true
  db_name             = "${var.db_name}"

  # How should we set the username and password?
  # export TF_VAR_db_username=alex
  # export TF_VAR_db_password=
  username = var.db_username
  password = var.db_password
}