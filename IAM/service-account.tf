resource "google_service_account" "VM-SA" {
  account_id   = "vm-service-account"
  
}

resource "google_service_account" "Node-SA" {
  account_id   = "node-service-account"
  
}

resource "google_project_iam_member" "gke-with-container-admin-role" {
  project = "encoded-metrics-401109"
  role    = "roles/artifactregistry.admin"
  member  = "serviceAccount:${google_service_account.Node-SA.email}"
}


resource "google_project_iam_member" "artifact-registare-role" {
  project = "encoded-metrics-401109"
  role    = "roles/artifactregistry.admin"
  member  = "serviceAccount:${google_service_account.VM-SA.email}"
}


resource "google_project_iam_member" "container-gke-role" {
  project = "encoded-metrics-401109"
  role    = "roles/container.admin"
  member  = "serviceAccount:${google_service_account.VM-SA.email}"
}









