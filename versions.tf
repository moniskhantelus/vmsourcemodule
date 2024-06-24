terraform {
  required_version = ">=0.13.0"
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = ">= 3.88, < 6"
    }
  }
  provider_meta "google" {
    module_name = "blueprints/terraform/terraform-google-vm:compute_instance/v11.1.0"
  }
}
