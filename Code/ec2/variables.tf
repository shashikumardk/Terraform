variable "region_tag" {
  default = "ap-south-1a"
}

variable "userdata" {
  default = "httpd"
}

variable "instance_type" {
  default = "t2.micro"
}


#condition to validate AMI
variable "ami-id" {
  default = "ami-0a23ccb2cdd9286bb"
  validation {
    condition = length(var.ami-id) > 4 && substr(var.ami-id, 0, 4) == "ami-"
    error_message = "The image_id value should be valid ami id."
  }
}