terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.15.0"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.7.2"
    }
  }

    backend "s3" {
    bucket = "my-bucket-d3fe2317d466c103"
    key    = "T3.tfstate"
    region = "us-east-2"

  }
}