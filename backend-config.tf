terraform {
  backend "s3" {
    bucket         = "naggar-terraform-statefile-iti"
    key            = "terraform-statefile"
    region         = "us-east-1"
    dynamodb_table = "terra-lock-state"
  }
}