terraform {
  backend "gcs" {
    bucket = "tf-state-gcp-example-three-tier-architecture"
    prefix = "foundation"
  }
}