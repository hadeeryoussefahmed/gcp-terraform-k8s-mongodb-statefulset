resource "google_container_cluster" "my-cluster" {
  name               = "my-cluster"
  location           = "us-east1"
  remove_default_node_pool = true
  deletion_protection = false

  #create 1 node for each zone
  initial_node_count       = 1
  network = module.network.network.id
  subnetwork = module.network.workload-subnet.id

   #make cluster private
  private_cluster_config {
    enable_private_endpoint = true
    enable_private_nodes    = true
    master_ipv4_cidr_block = "172.16.0.0/28"
    master_global_access_config{
      enabled = true
    }
  }
  master_authorized_networks_config{
    cidr_blocks {
      cidr_block = "10.0.0.0/24"
      display_name = "management subnet"
    
  } 
}
}



