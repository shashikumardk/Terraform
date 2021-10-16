#Variable name defines the ALB name
variable "alb_name" {
  default = "test-alb-tf"
}

#specify whether alb is Internal, value should be True or False
variable "internal" {
  type = bool
  default = "true"
}

#specify Load balancer type
variable "lb_type" {
  default = "application"
}

#specify deletion protection type
variable "enable_deletion_protection" {
  type = bool
  default = true
}

variable "date" {}

#
