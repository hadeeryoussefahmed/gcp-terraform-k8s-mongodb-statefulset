module "network" {
    source = "./network"
}
module "storage" {
    source = "./storage"

}


module "compute" {
    source = "./compute"

}


module "security" {
    source = "./IAM"
}