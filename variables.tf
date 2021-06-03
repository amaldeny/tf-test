variable "project_id" {
  description = "The ID of the project where this VPC will be created"
}

variable "region1" {
  description = "The region where this VPC will be created"
}

variable "disk_zone" {
  description = "The zone where disks will be created"
}

variable "disk_type" {
  description = "type of disk created"
}

variable "vpc_name" {
  description = "The name of VPC which will be created"
}

variable "sub_cidr" {
  type    = list
  default = []
}

variable "sub_region" {
  type    = list
  default = []
}

#variable "sub_name" {
#  type    = list
#  default = []
#}