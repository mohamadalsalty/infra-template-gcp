provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_instance" "vm" {
  name         = var.vm_name
  machine_type = var.machine_type
  zone         = var.zone
  tags         = [var.firewall_http_rule, var.firewall_ssh_rule]

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
