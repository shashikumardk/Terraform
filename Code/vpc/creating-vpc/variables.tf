#VPC variables
variable "resource" {
  type = map(string)
  default = {
    resource = "vpc"
  }
}

variable "cidr" {
  default = "10.0.0.0/16"
}

#subnet variables
variable "azs-cidrs" {
  default = {
    ap-south-1a = "10.0.0.0/22"
    ap-south-1b = "10.0.4.0/22"
  }
}

