terraform {
  backend "s3" {
    bucket = "solombucket"
    key    = "terraform/test/terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "backend"
  }
}
