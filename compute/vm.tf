resource "google_compute_instance" "private-vm" {
  name         = "private-vm"
  machine_type = "e2-micro"
  zone         = "us-central1-a"
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }
  
  network_interface {
    network = module.network.network.id
    subnetwork = module.network.management-subnet.id
  }

  service_account {
    email  = module.security.security-vm
    scopes = ["cloud-platform"]
  }

}