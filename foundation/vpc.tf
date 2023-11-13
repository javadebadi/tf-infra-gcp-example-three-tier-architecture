resource "google_compute_network" "this" {
  depends_on              = [google_project_service.this["compute"]]
  name                    = var.network
  auto_create_subnetworks = false
}
