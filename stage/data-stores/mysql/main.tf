provider "aws" {
  region = "us-east-2"
}

module "mysql_cluster" {
  source = "../../../modules/data-stores/mysql"
  cluster_name           = "db-stage-"
  db_name           = "terraform"
  db_username = var.db_username
  db_password = var.db_password
  # export TF_VAR_db_username=alex
  # export TF_VAR_db_password=
}