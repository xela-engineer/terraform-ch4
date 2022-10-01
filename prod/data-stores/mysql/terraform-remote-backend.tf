terraform {
  backend "s3" {
    # Replace this with your bucket name!
    key            = "prod/data-stores/mysql/terraform.tfstate"
  }
}