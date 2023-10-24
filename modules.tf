module "storage" {
    source = "./storage"

}

module "compute" {
    source = "./compute"

    #gke_service_account = 
    #vm_service_account = 

    #vpc = 
    #workload_subnet = 

    #management_subnet = 
}