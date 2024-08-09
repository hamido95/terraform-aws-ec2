variable "environment" {
 description = "environment variables that used as a prefix" 
 type = string
 default = "test"
}

variable "owner" {
  description = "the name of the person or organization"
  type = string
  default = "hamido"
}

variable "aws_region" {
  description = "region in which our resources to be created"
  type = string
  default = "eu-north-1"
}