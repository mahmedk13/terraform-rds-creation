variable "region" {
  type        = string
  description = "region of vpc"
  default     = "ap-south-1"
}

variable "vpc-name" {
  type    = string
  default = "my-vpc"
}

variable "vpc-cidr" {
  type        = string
  description = "cidr range of vpc"
}

variable "private-cidrs" {
  type = list(string)
}

variable "public-cidrs" {
  type = list(string)
}