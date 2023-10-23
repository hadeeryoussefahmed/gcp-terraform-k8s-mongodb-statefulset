
resource "google_compute_network" "hadeer-vpc" {
  name = "hadeer-vpc"
  auto_create_subnetworks = false
  routing_mode = "GLOBAL"
}