terraform {
  backend "gcs" {
    project = var.project_id
    bucket  = "state"
  }
}
