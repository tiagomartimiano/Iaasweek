variable "vpc_cidr_block" {
  description = "Range of IPV4 address for the VPC."
  default = "172.17.0.0/16"
}

variable "az.count" {
  default     = "2"
}
