variable "vpcs_cidr_name" {}

#vpc cidr is provided
variable "subnet_cidrs" {}

#local helps to filer complex type Data
locals {
  az_cidr_list = flatten([for member, value in var.subnet_cidrs :
    flatten([for dataset, roles in value :
      [for role in roles :
        { "azs"      = member
          "fe_or_be" = dataset
        "cidr" = role }
    ]])
  ])
}

#in testing want to implement logic in Routes
variable "igw_required" {
  type    = bool
  default = "true"
}

variable "sg_rules" {
  hhtp = {
    from_port = ""
    to_port   = ""
    protocol  = ""

  }
}

