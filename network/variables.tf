variable "project_id" {
  description = "The ID of the GCP project to create resources in"
}

variable "region" {
  description = "The region to create the network in"
}

variable "network_name" {
  description = "The name to use for the network"
}

variable "subnet_name" {
  description = "The name to use for the subnet"
}

variable "subnet_cidr" {
  description = "The CIDR block to use for the subnet"
}
