provider "google" {
  credentials = file("/home/hadeer/GCP-ITI-Project/key.json")
  project     = "encoded-metrics-401109"
  region      = "us-central1"
}
