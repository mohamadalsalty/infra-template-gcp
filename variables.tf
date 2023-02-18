variable "project_id" {
  description = "The ID of the GCP project to create resources in"
}

variable "region" {
  description = "The region to create the VM in"
}

variable "zone" {
  description = "The zone to create the VM in"
}

variable "machine_type" {
  description = "The machine type to use for the VM"
}

variable "vm_name" {
  description = "The name to use for the VM"
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

variable "firewall_http_rule" {
  description = "The firewall rule name"
}

variable "firewall_ssh_rule" {
  description = "The firewall rule name"
}
