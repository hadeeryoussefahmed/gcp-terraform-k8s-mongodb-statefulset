output "network" {
  value       = google_compute_network.hadeer-vpc  
  
}


output "workload-subnet" {
  value       = google_compute_subnetwork.workload-subnet  
  
}

output "management-subnet" {
  value       = google_compute_subnetwork.management_subnet   
 
}

