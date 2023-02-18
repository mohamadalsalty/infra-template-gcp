provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_network" "network" {
  name = var.network_name
}

resource "google_compute_subnetwork" "subnet" {
  name          = var.subnet_name
  ip_cidr_range = var.subnet_cidr
  network       = google_compute_network.network.self_link
  region        = var.region
}
