resource "google_compute_subnetwork" "workload-subnet" {
  name = "workload-subnet"
  ip_cidr_range = "192.168.0.0/24"
  region = "us-east1"
  network = google_compute_network.vpc.id
}
