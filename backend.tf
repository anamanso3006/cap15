terraform {
  backend "gcs" {
    bucket = "github-action-aula10"
    prefix = "terraform/state"
    
  }
}