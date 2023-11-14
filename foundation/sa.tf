// Create Services account with necessary roles (permissions)
resource "google_service_account" "this" {
  depends_on   = [google_project_service.this["iam"]]
  account_id   = var.sa_name
  display_name = "${var.sa_name} Service Account"
}
