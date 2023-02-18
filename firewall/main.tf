resource "google_compute_firewall" "firewall-http-rule" {
  name = var.firewall_http_rule
  allow {
    ports    = ["80"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = var.network_name
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]
  target_tags   = [var.firewall_http_rule]
}



resource "google_compute_firewall" "firewall-ssh-rule" {
  name = var.firewall_ssh_rule
  allow {
    ports    = ["22"]
    protocol = "tcp"
  }
  direction     = "INGRESS"
  network       = var.network_name
  priority      = 1000
  source_ranges = ["0.0.0.0/0"]
  target_tags   = [var.firewall_ssh_rule]
}
