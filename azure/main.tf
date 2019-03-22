module "azure-provider" {
  source = "./provider"
}

module "t1" {
    source = "./modules/t1"
}

module "t2" {
    source = "./modules/t2"
    location = "${module.t1.location}"
}