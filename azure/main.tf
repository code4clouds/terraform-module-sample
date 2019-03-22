module "azure-provider" {  # load the Azure provider
  source = "./provider"
}

module "t1" { # run t1
    source = "./modules/t1"
}

module "t2" { # run t2
    source = "./modules/t2"
    # Set the location of the t1 into the t2 variables
    location = "${module.t1.location}"
}