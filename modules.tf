module "network" {
  source = "./modules/network"

  tags         = local.tags
  vpc_cidr     = var.vpc_cidr
  region       = var.region
  project_name = var.project_name
}

module "ec2" {
  source = "./modules/ec2"


  depends_on   = [module.network]
  tags         = local.tags
  vpc_id       = module.network.vpc_id
  region       = var.region
  project_name = var.project_name

  subnet_public_id = module.network.subnet_public_id

  ec2_ssh_key_name = var.ec2_ssh_key_name
  ec2_type         = var.ec2_type
  ami_ec2          = var.ami_ec2
}





