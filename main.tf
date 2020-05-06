resource "google_container_cluster" "primary" {
  name     = "my-gke-cluster"
  location = "us-central1"
  project  = "lab-marceloweb"
  initial_node_count       = 2

  master_auth {
    username = ""
    password = ""

    client_certificate_config {
      issue_client_certificate = false
    }
  }

}

variable "cluster_name" {
  default = "my-gke-cluster"
}

module "gcp" {
  cluster_name = var.cluster_name
}

