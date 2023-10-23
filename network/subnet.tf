resource "google_compute_subnetwork" "management_subnet" {
  name = "management-subnet"
  ip_cidr_range = "10.0.0.0/24"
  region = "us-central1"
  network = google_compute_network.hadeer-vpc.id
}



