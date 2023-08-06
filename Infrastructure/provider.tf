terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.4.0"
    }
  }
}

/* backend "s3" {
  bucket = "ansi-file"
  key    = "tf-statefile/terraform.tfstate"
  region = "us-west-1"
} */

provider "aws" {
  region = "us-west-1"
}