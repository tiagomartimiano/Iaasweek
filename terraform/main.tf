provider "aws" {
  version = "~> 2.0"
  region = "us-west-2"
}

terraform {
  backend "s3" {
    bucket = "iaasweek-terraform-test"
    key    = "terraform.tfstate"
    region = "us-west-2"
  }
}
