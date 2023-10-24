resource "google_container_node_pool" "primary_node"{
  name       = "my-node-pool"
  cluster    = google_container_cluster.my-cluster.name
  
  location           = "us-east1"
  node_count = 1

  node_config {
    machine_type = "e2-medium"
  
#custom service account
    service_account = module.security.security-gke
    oauth_scopes = [
      "https://www.googleapis.com/auth/cloud-platform"
    ]   
}
}
