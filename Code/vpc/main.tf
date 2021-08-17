provider "aws" {
  region = "ap-south-1"
  profile = "default"
}

resource "aws_vpc" "vpc1" {
  cidr_block       = var.cidr
  instance_tenancy = "default"

  tags = {
    date= var.date
  }
}