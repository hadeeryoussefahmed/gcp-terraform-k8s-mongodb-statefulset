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
    subnetwork = var.subnetwork
  }

  service_account {
    email  = var.service_account_vm
    scopes = ["cloud-platform"]
  }

}