provider "google" {
  project = var.project_id
  region  = var.region
}

locals {
  machine_type = "e2-micro"
}

resource "google_compute_instance" "vm" {
  name         = var.vm_name
  zone         = var.zone
  tags         = [var.firewall_http_rule, var.firewall_ssh_rule]
  machine_type = local.machine_type

  boot_disk {
    initialize_params {
      image = var.distro
    }
  }

  network_interface {
    subnetwork = var.subnet_name
    access_config {
      // Ephemeral IP
    }
  }

  metadata_startup_script = file("${path.module}/startup-script.sh")

}
