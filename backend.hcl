# backend.hcl
bucket         = "terraform-up-and-running-state-collection"
region         = "us-east-2"
dynamodb_table = "terraform-up-and-running-locks"
encrypt        = true