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


#ec2 variables
variable "ami-id" {
  default = "ami-04db49c0fb2215364"
  validation {
    condition     = length(var.ami-id) > 4 && substr(var.ami-id, 0, 4) == "ami-"
    error_message = "The image_id value should be valid ami id."
  }
}
