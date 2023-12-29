provider "google" {
  project = var.project_id
  region  = var.region
}


locals {
  distro = "debian-cloud/debian-11"
}


module "network" {
  source       = "./network"
  project_id   = var.project_id
  region       = var.region
  network_name = var.network_name
  subnet_name  = var.subnet_name
  subnet_cidr  = var.subnet_cidr
}


module "backend-vm" {
  source             = "./backend-vm"
  project_id         = var.project_id
  region             = var.region
  zone               = var.zone
  vm_name            = var.vm_name
  network_name       = module.network.network_name
  subnet_name        = module.network.subnet_name
  firewall_http_rule = var.firewall_http_rule
  firewall_ssh_rule  = var.firewall_ssh_rule
  distro             = local.distro

}

module "firewall" {
  source             = "./firewall"
  project_id         = var.project_id
  region             = var.region
  zone               = var.zone
  vm_name            = var.vm_name
  network_name       = module.network.network_name
  subnet_name        = module.network.subnet_name
  firewall_http_rule = var.firewall_http_rule
  firewall_ssh_rule  = var.firewall_ssh_rule
}
