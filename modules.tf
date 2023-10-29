module "storage" {
    source = "./storage"

}

module "compute" {
    source = "./compute"
    service_account_gke = module.security.security-gke.email
    service_account_vm = module.security.security-vm.email
    subnetwork = module.network.management-subnet.name
    vpc = module.network.network.name
    subnetwork_gke = module.network.workload-subnet.name
}

module "network" {
    source = "./network"
    }


module "security" {
    source = "./IAM"
}