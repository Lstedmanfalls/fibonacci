variable "environment" {
  description = "Environment to deploy these resources into (development, staging, or production)"
  type        = string
  nullable    = false
}

variable "region" {
  description = "The region to deploy the resources into"
  type        = string
  nullable    = false
}

variable "az" {
  description = "The region's availability zone to deploy these resources into"
  nullable    = false
}
