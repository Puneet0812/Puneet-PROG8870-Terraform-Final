terraform {
  backend "s3" {
    bucket         = "puneet891023-tfstate-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-lock"  # optional, but included for extra credit
  }
}

