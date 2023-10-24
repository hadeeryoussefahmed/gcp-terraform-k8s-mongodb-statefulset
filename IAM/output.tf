output "security-vm" {
  value       = google_service_account.VM-SA.email

}

output "security-gke" {
  value       = google_service_account.Node-SA.email
 
}