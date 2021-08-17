provider "aws" {
  region  = "ap-south-1"
  profile = "default"
}

module "call-vpc" {
  source = "./code/vpc"
}