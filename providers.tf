# provider.tf
provider "google" {
  project = var.project_name  # Replace with your GCP project ID
  region  = "us-central1"      # Replace with your desired region (e.g., us-central1)
  
}