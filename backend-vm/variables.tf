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
  description = "The name of the network to use for the VM"
}

variable "subnet_name" {
  description = "The name of the subnet to use for the VM"
}

variable "firewall_http_rule" {
  description = "The firewall rule http name"
}

variable "firewall_ssh_rule" {
  description = "The firewall rule ssh name"
}
variable "distro" {
  type = string
}
